#!/usr/bin/env bash
set -xefu
docker run --name mypostgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker ps
