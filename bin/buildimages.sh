#!/bin/bash

set -e

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BASEDIR=${SCRIPTDIR}/..

pushd ${BASEDIR} > /dev/null

(cd nginx; docker build -t proxy:latest .)
(cd microblog; docker build -t microblog:latest .)

popd > /dev/null
