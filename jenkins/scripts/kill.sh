#!/usr/bin/env sh

echo 'Releasing and Destroying Resources ...'
echo 'Script in killing the Process ...'
set -x
kill $(cat .pidfile)
