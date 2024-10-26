# Tubetube

#### [Documentation / Source](https://github.com/mattblackonly/tubetube)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  tubetube:
    image: ghcr.io/mattblackonly/tubetube:latest
    container_name: tubetube
    ports:
      - 6543:6543
    volumes:
      - ./general:/data/General
      - ./music:/data/Music
      - ./podcasts:/data/Podcast
      - ./videos:/data/Video
      - ./config:/config
    environment:
      - THREAD_COUNT=1
      - PUID=1000
      - PGID=1000
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)