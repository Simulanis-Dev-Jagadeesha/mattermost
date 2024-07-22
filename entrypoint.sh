#!/bin/sh

# Wait for PostgreSQL to be available
until nc -z -v -w30 $MM_SQLSETTINGS_DRIVERNAME $MM_SQLSETTINGS_DATASOURCE; do
  echo 'Waiting for database connection...'
  sleep 1
done

# Run the Mattermost server
exec mattermost
