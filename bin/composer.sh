#!/usr/bin/env -S bash -e

"${BASH_SOURCE%/*}/exec.sh" php composer "$@"
