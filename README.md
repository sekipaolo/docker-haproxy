# docker-haproxy

Haproxy docker image based on alpine


# Usage

## Mouted config

```bash
$ docker run -d -p 80:80 443:443 -v /host/path/to/haproxy.cfg:/etc/haproxy/haproxy.cfg:ro sekipaolo/haproxy
```

## Included config
Dockerfile
```dockerfile
FROM sekipaolo/haproxy:latest
COPY /path/to/haproxy.cfg /etc/haproxy/haproxy.cfg
EXPOSE 80 443
```

```bash
$ docker run -d -p 80:80 443:443 sekipaolo/haproxy
```
