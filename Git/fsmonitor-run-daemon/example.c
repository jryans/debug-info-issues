#include <stddef.h>
#include <pthread.h>

// git-compat-util.h

int error(const char *err, ...) __attribute__((format (printf, 1, 2)));
int error_errno(const char *err, ...) __attribute__((format (printf, 1, 2)));

// strbuf.h

struct strbuf {
  size_t alloc;
  size_t len;
  char *buf;
};

// simple-ipc.h

struct ipc_server_data;

struct ipc_server_reply_data;

typedef int (ipc_server_reply_cb)(struct ipc_server_reply_data *,
          const char *response,
          size_t response_len);

typedef int (ipc_server_application_cb)(void *application_data,
          const char *request,
          size_t request_len,
          ipc_server_reply_cb *reply_cb,
          struct ipc_server_reply_data *reply_data);

struct ipc_server_opts
{
  int nr_threads;
  unsigned int uds_disallow_chdir:1;
};

int ipc_server_run_async(struct ipc_server_data **returned_server_data,
       const char *path, const struct ipc_server_opts *opts,
       ipc_server_application_cb *application_cb,
       void *application_data);

int ipc_server_stop_async(struct ipc_server_data *server_data);

int ipc_server_await(struct ipc_server_data *server_data);

// fsmonitor--daemon.h

struct fsmonitor_daemon_state {
  pthread_t listener_thread;
  pthread_t health_thread;

  int listen_error_code;
  int health_error_code;

  struct ipc_server_data *ipc_server_data;
  struct strbuf path_ipc;
};

// fsm-health.h

void fsm_health__stop_async(struct fsmonitor_daemon_state *state);

// fsm-listen.h

void fsm_listen__stop_async(struct fsmonitor_daemon_state *state);

// fsmonitor--daemon.c

extern int fsmonitor__ipc_threads;

extern ipc_server_application_cb handle_client;

void *fsm_listen__thread_proc(void *_state);

void *fsm_health__thread_proc(void *_state);

int fsmonitor_run_daemon_1(struct fsmonitor_daemon_state *state)
{
  struct ipc_server_opts ipc_opts = {
    .nr_threads = fsmonitor__ipc_threads,
    .uds_disallow_chdir = 0
  };
  int health_started = 0;
  int listener_started = 0;
  int err = 0;

  if (ipc_server_run_async(&state->ipc_server_data,
         state->path_ipc.buf, &ipc_opts,
         handle_client, state))
    return error_errno(
      "could not start IPC thread pool on '%s'",
      state->path_ipc.buf);

  if (pthread_create(&state->listener_thread, NULL,
         fsm_listen__thread_proc, state) < 0) {
    ipc_server_stop_async(state->ipc_server_data);
    err = error("could not start fsmonitor listener thread");
    goto cleanup;
  }
  listener_started = 1;

  if (pthread_create(&state->health_thread, NULL,
         fsm_health__thread_proc, state) < 0) {
    ipc_server_stop_async(state->ipc_server_data);
    err = error("could not start fsmonitor health thread");
    goto cleanup;
  }
  health_started = 1;

cleanup:
  ipc_server_await(state->ipc_server_data);

  if (listener_started) {
    fsm_listen__stop_async(state);
    pthread_join(state->listener_thread, NULL);
  }

  if (health_started) {
    fsm_health__stop_async(state);
    pthread_join(state->health_thread, NULL);
  }

  if (err)
    return err;
  if (state->listen_error_code)
    return state->listen_error_code;
  if (state->health_error_code)
    return state->health_error_code;
  return 0;
}
