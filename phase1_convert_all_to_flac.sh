#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ${1:-./}
for i in $(ls *.mp3); do
  NAME=$(echo $i| sed -e 's/\.mp3$//')
  if [[ -s ${NAME}.flac ]]; then
    echo $NAME.flac already exists >&2
  else
    echo creating $NAME.flac >&2
    bash $SCRIPTDIR/mp3_to_flac.sh $NAME
  fi
done
popd
