#!/bin/sh

set -e

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"

cd "$SCRIPTPATH"
cd ..

. ./.env

./dump.sh | gzip -9 > mysql/dump.sql.gz
