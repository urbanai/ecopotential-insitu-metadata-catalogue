#!/bin/bash
# wait-for-postgres.sh

set -e



host="$1"

# Postgres configuration
export PGUSER="pycsw"
export PGHOST="$1"
export PGPORT="5432"
export PGPASSWORD="pycsw"

shift
cmd="$@"

until psql -d pycsw -h "$host" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 5
done

#psql -d pycsw -h "$host" -c "DROP TABLE IF EXISTS records;"

>&2 echo "Postgres is up - executing command: $cmd"
pycsw-admin.py -c setup_db -f default.cfg
exec $cmd
