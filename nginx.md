install nginx and certbot - this is to setup and renew SSL certificates (I wouldn't let `docker` run that automatically - always manually)

```bash
sudo certbot --nginx
```


## What is my config?

```bash
cat /etc/nginx/nginx.conf
```

```txt
include /etc/nginx/modules-enabled/*.conf;
include /etc/nginx/conf.d/*.conf;
include /etc/nginx/sites-enabled/*;  ## this is where you put everything
```

### What's in `/etc/nginx/sites-enabled/toto` ? 
here's the boilerplate

(amazing .md recognizes `nginx` ???)


```nginx
server {
  server_name frenchcommando.com;   # can put many servers here
  location / {
    root /home/frenchcommando/homepage/;
    index index.html;
  }
}
```

next up ? make a flask server


### Restart nginx after changes

```bash
sudo service nginx restart
```


### make the file executable from windows

```bash
git update-index --chmod=+x ".\docker-compose-examples\nginx-static\build_and_up.sh"
```
