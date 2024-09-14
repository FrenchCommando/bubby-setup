```bash
sudo apt-get update
sudo apt-get upgrade
```

Then what? Need to install `docker` because it's not native.

this instruction page seems pretty nice

https://pimylifeup.com/raspberry-pi-docker/


```bash
curl -sSL https://get.docker.com | sh
```

(otherwise need `sudo` everytime we call `docker` - it's a choice, but I didn't know I made that choice when I made it)
I did actually need this one:
```bash
sudo usermod -aG docker $USER
```

This list all the groups (we) `$USER` is part of (needs `docker` to run `docker`)
```bash
groups
```

```bash
docker run hello-world
```
