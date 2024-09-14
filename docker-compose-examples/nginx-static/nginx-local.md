need to add this to nginx configurations

```nginx
server {
    listen 80;

    server_name nginxstatic.frenchcommando.com

    location / {
        proxy_pass http://localhost:1337;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
    }
}
```
https://stackoverflow.com/questions/70385932/nginx-redirect-domain-to-localhostport-content
