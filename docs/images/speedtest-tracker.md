# Speedtest-tracker

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-speedtest-tracker "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
services:
  speedtest-tracker:
    image: lscr.io/linuxserver/speedtest-tracker:latest
    container_name: speedtest-tracker
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=europe/amsterdam
      - DB_CONNECTION=sqlite
    volumes:
      - ./data:/config
    ports:
      - 8080:80
    restart: unless-stopped

```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/ "docs.docker.com/envoirment variables")
