set -eux

yq 'select(.assignment == true)' "$@"
