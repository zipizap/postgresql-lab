#!/usr/bin/env bash
set -xefu

# see https://hub.docker.com/_/postgres

docker run \
  --name mypostgres \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -d \
  postgres
docker ps
