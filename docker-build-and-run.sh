#!/bin/sh

set -e

docker build . -t anthology

docker run --rm -it -v "$PWD:/data" -e MERCURY_API_KEY anthology sample.txt
