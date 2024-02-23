# Heimdall

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-heimdall/ "Documentation / Source")

Heimdall, there where dashboards for me started. 

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose")):

```yaml
version: "2.1"
services:
  heimdall:
    image: lscr.io/linuxserver/heimdall:latest
    container_name: heimdall
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Amsterdam
    volumes:
      - ./heimdall:/config
    ports:
      - 8096:80
      - 443:443
    restart: unless-stopped
    network_mode: bridge
```
