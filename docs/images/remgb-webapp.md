# **Remgb-webapp**

#### Documentation / Source

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  rembg:
    image: ghcr.io/101br03k/remgb-webapp:v1.0.1
    restart: unless-stopped
    ports:
      - 5100:5100
    container_name: rembg-webapp
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)