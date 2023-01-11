set -eu

JOBS="${1:-4}"
OUTPUT_DIR="experiment-$(date '+%Y-%m-%dT%H:%M')"

mkdir ${OUTPUT_DIR}
# `script` is used to fake a terminal, which tweaks stream buffering and ensures
# everything displays as it would interactively.
seq ${JOBS} | parallel -j -2 --bar --joblog "${OUTPUT_DIR}/summary" --wd "${OUTPUT_DIR}/{}/" --results "${OUTPUT_DIR}/{}/" script -q results ../../job.sh
