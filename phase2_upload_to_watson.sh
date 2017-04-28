#!/bin/bash
for i in $(ls *.flac); do
  NAME=$(echo $i| sed -e 's/\.flac$//')
  if [[ -s ${NAME}.json ]]; then
    echo $NAME.json already exists >&2
  else
    echo creating $NAME.json >&2
    bash ./upload_to_watson.sh $NAME.flac > $NAME.json
  fi
done
