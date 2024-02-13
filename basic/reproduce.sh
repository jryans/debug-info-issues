set -ux

for i in *
do
  [ -d "$i" ] || continue
  [ -e "$i/reproduce.sh" ] || continue
  (cd $i; ./reproduce.sh)
done
