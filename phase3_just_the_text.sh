#!/bin/bash
for i in $(ls *.json); do
  NAME=$(echo $i| sed -e 's/\.json//')
  if [[ -s ${NAME}.txt ]]; then
    echo $NAME.txt already exists >&2
  else
    echo creating $NAME.txt >&2
    cat $NAME.json | ./just_the_text.sh > $NAME.txt
  fi
done
