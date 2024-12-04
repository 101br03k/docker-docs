# **Rembg-webapp**

#### [Documentation / Source](https://github.com/101br03k/rembg-webapp)

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

<br><br><br><br><br><br>

---