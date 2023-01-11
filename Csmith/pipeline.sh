set -eux

JOBS="${1:-4}"
OUTPUT_DIR="experiment-$(date '+%Y-%m-%dT%H:%M')"

mkdir ${OUTPUT_DIR}
seq ${JOBS} | parallel -j -2 --bar --joblog "${OUTPUT_DIR}/summary" --wd "${OUTPUT_DIR}/{}/" --results "${OUTPUT_DIR}/{}/" ../../job.sh
