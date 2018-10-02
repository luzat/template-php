#!/usr/bin/env -S bash -e

cd "${BASH_SOURCE%/*}/.."
. ./.env

"${BASH_SOURCE%/*}/exec.sh" mysql mysql --default-character-set=utf8 --silent -h mysql -u root --password=dev "$MYSQL_DATABASE"
