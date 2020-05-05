# simple-reverse-proxy
A simple reverse proxy docker container powered by nginx.

This container is relatively straightforward. It's default configuration is to act as a reverse proxy for a single specified endpoint using nginx as the reverse proxy engine.

The container is configured with two environment variables, one for the server name, another for the full url of the remtoe server to reverse proxy.

Here is an example of how to use this container:
```
$ docker run \
  -p 80:80 \
  -e NGINX_SERVER_NAME=somesite.com \
  -e NGINX_REMOTE_URL=http://someremotesite.com \
  kytech/simple-reverse-proxy
```

The current configuration proxys the remtoe url at the root of the specified server name.

To edit the default configuration, modify the proxyserver.template file either through a bind mount pointed to `/etc/nginx/conf.d/proxyserver.template` or by editing the file and rebuilding using `docker build`
