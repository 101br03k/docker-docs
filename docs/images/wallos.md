# Wallos

#### [Documentation / Source](https://github.com/ellite/Wallos)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  wallos:
    container_name: wallos
    image: ghcr.io/ellite/wallos:latest
    ports:
      - 8282:80/tcp
    environment:
      TZ: europa/amsterdam
    # Volumes store your data between container upgrades
    volumes:
      - ./db:/var/www/html/db
      - ./logos:/var/www/html/images/uploads/logos
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)