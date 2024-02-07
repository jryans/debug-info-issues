set -eu

# Rerun a single job and update the results script
script -q results.md \
./job.sh
dos2unix -q -f results.md
