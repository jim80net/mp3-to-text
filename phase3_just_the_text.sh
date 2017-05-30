#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ${1:-./}
for i in $(ls *.json); do
  NAME=$(echo $i| sed -e 's/\.json//')
  if [[ -s ${NAME}.txt ]]; then
    echo $NAME.txt already exists >&2
  else
    echo creating $NAME.txt >&2
    cat $NAME.json | $SCRIPTDIR/just_the_confident_text.sh > $NAME.txt
  fi
done
popd
