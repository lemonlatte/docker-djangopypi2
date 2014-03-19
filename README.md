
DjangoPypi Server
=================


## Configuration

1. Set your smtp server in settings.json
2. Set your domain name and default account in start_script.py

## Run

``` shell
mkdir -p /var/docker/djangopypi2
mkdir /var/docker/djangopypi2/media
docker build -t pypi:latest Djangopypi2-Dockerfile
docker run -i -t -p 80:80 -v /var/docker/djangopypi2:/var/data pypi:latest
```
