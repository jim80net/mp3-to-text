#!/bin/bash

jq --raw-output '.results[].alternatives[0] | select(.confidence >= 0.8) | .transcript'
