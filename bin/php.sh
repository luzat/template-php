#!/bin/bash

set -e

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"

cd "$SCRIPTPATH"
cd ..

. ./.env

exec docker-compose exec -u "$DUID" /usr/local/bin/php "$@"
