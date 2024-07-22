# Code-Server

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-code-server/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
version: "3.3"
services:
  code-server:
    image: lscr.io/linuxserver/code-server:latest
    container_name: code-server
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europa/Amsterdam
#      - PASSWORD= #optional
#      - HASHED_PASSWORD= #optional
#      - SUDO_PASSWORD=password #optional
#      - SUDO_PASSWORD_HASH= #optional
#      - PROXY_DOMAIN=code-server.my.domain #optional
#      - DEFAULT_WORKSPACE=/config/workspace #optional
    volumes:
      - /docker/docker-setup/code-server:/config
      - /docker/docker-setup:/docker/docker-setup
      - /docker/homepage-config:/docker/homepage-config
      - /docker/dev:/docker/dev
      - /docker/builds:/builds
    ports:
      - 5443:8443
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
