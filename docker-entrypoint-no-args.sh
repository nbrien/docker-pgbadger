#!/bin/sh
set -e

mkdir -p "$PGBADGER_DATA"

pgbadger -I -O /data --prefix '%t [%p]: [%l-1] db=%d,user=%u,app=%a,client=%h' --pid-dir /tmp/pgbadger/ --exclude-appname pgbadger -R 4 -j 3 -t 30 -X /logs/*
