#!/usr/bin/env bash
set -xefu
docker rm --force mypgadmin mypostgres
docker ps
