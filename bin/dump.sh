#!/bin/bash

set -e

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"

cd "$SCRIPTPATH"
cd ..

. ./.env

exec docker-compose exec mysql env MYSQL_PWD=dev /usr/bin/mysqldump --opt -h mysql -u root "$MYSQL_DATABASE"
