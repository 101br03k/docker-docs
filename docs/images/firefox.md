# **FireFox**

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-firefox/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  firefox:
    image: lscr.io/linuxserver/firefox:latest
    container_name: firefox
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europa/Amsterdam
    volumes:
      - ./config:/config
    ports:
      - 6901:3000
      - 6902:3001
    shm_size: "1gb"
    restart: unless-stopped
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
