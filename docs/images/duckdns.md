# **Duckdns**

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-duckdns/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  duckdns:
    image: lscr.io/linuxserver/duckdns:latest
    container_name: duckdns
    environment:
      - PUID=1000 #optional
      - PGID=1000 #optional
      - TZ=Europa/Amsterdam
      - SUBDOMAINS=$SUBDOMAINS
      - TOKEN=$TOKEN
      - LOG_FILE=true #optional
    volumes:
      - ./config:/config #optional
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
<br><br><br>
---