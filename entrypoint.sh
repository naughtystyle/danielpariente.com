#!/bin/bash
set -e

rm -f /danielpariente/tmp/pids/server.pid

exec "$@"
