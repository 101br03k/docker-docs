# Duckdns

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-duckdns/ "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
version: "2.1"
services:
  duckdns:
    image: lscr.io/linuxserver/duckdns:latest
    container_name: duckdns
    environment:
      - PUID=1000 #optional
      - PGID=1000 #optional
      - TZ=Europa/Amsterdam
      - SUBDOMAINS={CHANGE!!}
      - TOKEN={CHANGE!!}
      - LOG_FILE=true #optional
    #  - UPDATE_IP=ipv4 #optional
    volumes:
      - ./config:/config #optional
    restart: unless-stopped
    network_mode: bridge

```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/ "docs.docker.com/envoirment variables")
