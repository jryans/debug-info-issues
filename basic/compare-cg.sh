set -eux

for i in *
do
  [ -d "$i" ] || continue
  diff -urN "$i/example-O1.ll" "$i/example-O1-cg.ll"
done
