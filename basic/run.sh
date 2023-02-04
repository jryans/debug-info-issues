set -eux

for i in *
do
  [ -d "$i" ] || continue
  (cd $i; ./run.sh)
done
