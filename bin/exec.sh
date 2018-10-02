#!/usr/bin/env -S bash -e

cd "${BASH_SOURCE%/*}/.."
. ./.env

exec docker-compose exec -u "$DUID" "$@"
