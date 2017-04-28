#!/bin/bash

cat *.txt | tr ' ' '\n'| egrep -v "^$" | sort | uniq -c | sort -n
