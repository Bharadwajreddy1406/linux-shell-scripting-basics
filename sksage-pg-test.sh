#!/bin/sh
# wait-for-postgres.sh

set -e

host="$1"
port="$2"
user="$3"
db="$4"
shift 4
cmd="$@"

until pg_isready -h "$host" -U "$user" -d "$db" -p "$port"; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

echo "PostgreSQL is ready!"
exec $cmd
