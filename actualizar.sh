#!/bin/bash
set -e
DIR="/vps/clientes/mobatailanding"
COMPOSE="$DIR/docker-compose.prod.yml"

echo "==> Git pull..."
cd $DIR
git pull

echo "==> Build y deploy..."
sudo docker compose -f $COMPOSE up -d --build

echo "==> Listo."
