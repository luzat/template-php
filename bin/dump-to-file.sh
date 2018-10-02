#!/usr/bin/env -S bash -e

"${BASH_SOURCE%/*}/dump.sh" | gzip -9 > "${BASH_SOURCE%/*}/../mysql/dump.sql.gz"
