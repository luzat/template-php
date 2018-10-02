#!/usr/bin/env -S bash -e

cd "${BASH_SOURCE%/*}/.."
. ./.env

"${BASH_SOURCE%/*}/exec.sh" mysql env MYSQL_PWD=dev /usr/bin/mysqldump --opt -h mysql -u root "$MYSQL_DATABASE"
