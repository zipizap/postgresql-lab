#!/usr/bin/env bash
set -xefu
docker run \
  --name mypgadmin \
  -p 8080:80 \
  -e 'PGADMIN_DEFAULT_EMAIL=admin@null.com' \
  -e 'PGADMIN_DEFAULT_PASSWORD=admin' \
  -d dpage/pgadmin4
sleep 20
set +x
MYPOSTGRES_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mypostgres)
cat <<EOT 
=== PGADMIN  webpage ===
  http://localhost:8080   
  user/pass = admin@null.com / admin


=== POSTGRESQL server ===
  $MYPOSTGRES_IP:5432
  db: postgres
  user/pass: postgres / mysecretpassword

EOT
xdg-open http://localhost:8080 &>/dev/null &

