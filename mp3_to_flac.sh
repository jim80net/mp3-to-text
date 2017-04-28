#!/bin/bash
NAME=${1:?}

ffmpeg -i "${NAME}.mp3" -ar 16000 "${NAME}.flac"
