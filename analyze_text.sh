#!/bin/bash

./text_to_wordcloud_fodder.sh | sort | uniq -c | sort -n
