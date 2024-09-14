install nginx and certbot - this is to setup and renew SSL certificates (I wouldn't let `docker` run that automatically - always manually)

```bash
sudo certbot --nginx
```
