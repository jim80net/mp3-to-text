#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ${1:-./}
$SCRIPTDIR/text_to_wordcloud_fodder.sh | wordcloud_cli.py > wordcloud.png
popd
