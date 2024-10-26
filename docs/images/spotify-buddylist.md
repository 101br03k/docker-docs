# **Spotify-Buddylist**

#### [Documentation / Source](https://github.com/benonymity/spotify-buddylist)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  spotify-buddylist:
    ports:
      - 10000:10000
    volumes:
      - ./activity.db:/activity.db
    container_name: spotify-buddylist
    environment:
      - SP_DC=${SP_DC}
    image: benonymity/spotify-buddylist:latest
    network_mode: bridge
    restart: unless-stopped
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)