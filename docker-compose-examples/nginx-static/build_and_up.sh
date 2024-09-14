#!/bin/sh

mv nginxstaticexample /etc/nginx/sites-enabled

sudo docker-compose build
sudo docker-compose down
sudo docker-compose up -d
echo "Done"
