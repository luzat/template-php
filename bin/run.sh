#!/usr/bin/env -S bash -e

cd "${BASH_SOURCE%/*}/.."
. ./.env

exec docker-compose run --rm --no-deps "$@"
