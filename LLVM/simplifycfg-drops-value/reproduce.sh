# Collect each step's output separately for easier comparison
script -q build.md ./build.sh
dos2unix -q -f build.md
script -q check-issue.md ./check-issue.sh
dos2unix -q -f check-issue.md

cat build.md check-issue.md > results.md
