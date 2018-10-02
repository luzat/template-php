#!/usr/bin/env -S bash -e

"${BASH_SOURCE%/*}/run.sh" php composer "$@"
