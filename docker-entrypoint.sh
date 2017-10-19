#!/bin/bash

set -e

if [ -f '.nogood' ]; then
	echo 'Please make sure you have mounted /data' >&2
	echo 'e.g. docker run --rm -it -v "$PWD:/data" anthology list.txt' >&2
	exit 1
fi

python -m SimpleHTTPServer &
sleep 1

exec /anthology/compile.sh "$@"
