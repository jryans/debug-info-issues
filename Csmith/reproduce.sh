set -eu

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

# Rerun a single job and update the results script
script -q results.md \
${SCRIPT_DIR}/job.sh
