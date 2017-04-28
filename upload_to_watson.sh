#!/bin/bash

curl -X POST -u c3478cba-4ee4-473d-b7f7-ec36a51da5d4:${PASSWORD:?} \
--header "Content-Type: audio/flac" \
--header "Transfer-Encoding: chunked" \
--data-binary @${1:?} \
"https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true"
