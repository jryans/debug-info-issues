script -q build.md \
./build.sh
dos2unix -q -f build.md

script -q check-O0.md \
./check.sh O0
dos2unix -q -f check-O0.md

script -q check-O1.md \
./check.sh O1
dos2unix -q -f check-O1.md
