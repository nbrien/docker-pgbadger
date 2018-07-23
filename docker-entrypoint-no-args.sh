#!/bin/sh
set -e

mkdir -p "$PGBADGER_DATA"

echo "$@"
exec "$@"
