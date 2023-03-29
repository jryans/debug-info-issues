# Collect each step's output separately for easier comparison
script -q build.md ./build.sh
dos2unix -f build.md
script -q check-issue.md ./check-issue.sh
dos2unix -f check-issue.md
script -q check-fix.md ./check-fix.sh
dos2unix -f check-fix.md

cat build.md check-issue.md check-fix.md > results.md
