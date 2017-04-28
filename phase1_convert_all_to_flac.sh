#!/bin/bash
for i in $(ls *.mp3); do
  NAME=$(echo $i| sed -e 's/\.mp3$//')
  if [[ -f ${NAME}.flac ]]; then
    echo $NAME.flac already exists >&2
  else
    echo creating $NAME.flac >&2
    bash ./mp3_to_flac.sh $NAME
  fi
done
