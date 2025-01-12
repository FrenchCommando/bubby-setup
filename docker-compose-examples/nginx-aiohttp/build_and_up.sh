#!/bin/sh

cp nginxaiohttpexample /etc/nginx/sites-enabled

git pull
sudo docker compose build
sudo docker compose down
sudo docker compose up -d
echo "Done"
