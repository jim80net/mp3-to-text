#!/bin/bash

cat *.txt | tr ' ' '\n'| egrep -v "^$|%HESITATION"
