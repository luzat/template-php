#!/bin/bash

set -e

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"

cd "$SCRIPTPATH"
cd ..

. ./.env

exec docker-compose exec mysql /usr/bin/mysql --default-character-set=utf8 --silent -h mysql -u root --password=dev "$MYSQL_DATABASE"
