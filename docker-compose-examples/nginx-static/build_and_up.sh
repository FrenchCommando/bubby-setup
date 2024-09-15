#!/bin/sh

cp nginxstaticexample /etc/nginx/sites-enabled

sudo docker-compose build
sudo docker-compose down
sudo docker-compose up -d
echo "Done"
