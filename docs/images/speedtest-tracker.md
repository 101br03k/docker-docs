# Speedtest-tracker

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-speedtest-tracker)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  speedtest-tracker:
    image: lscr.io/linuxserver/speedtest-tracker:latest
    container_name: speedtest-tracker
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=europe/amsterdam
      - DB_CONNECTION=sqlite
      - SPEEDTEST_SCHEDULE=5 * * * *
      - SPEEDTEST_SERVERS=
      - APP_KEY=$APP_KEY
    volumes:
      - ./data:/config
    ports:
      - 26144:80
      - 26145:443
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)