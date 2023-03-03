#!/usr/bin/env bash
set -xefu

# The localhost connection from inside same container is trusted, does not require password.
# But remote connections require password which can be set with PGPASSWORD=mysecretpassword
docker exec -it mypostgres psql -h 127.0.0.1 -U postgres -d postgres

#docker exec -it mypostgres bash

