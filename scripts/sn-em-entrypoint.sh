#!/bin/sh
set -e

sed -i 's|MODULE_ID|'$MODULE_ID'|g' /usr/share/nginx/html/index.html
sed -i 's|INSTANCE_NAME|'$INSTANCE_NAME'|g' /usr/share/nginx/html/index.html

exec /docker-entrypoint.sh "$@"