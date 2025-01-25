#!/bin/sh

# don't do it every time - will override certbot configs
# cp nginxaiohttpexample /etc/nginx/sites-enabled

# that not great practice
# git pull

sudo docker compose build
sudo docker compose down
sudo docker compose up -d
echo "Done"
