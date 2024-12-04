# **Scratch-map**

#### [Documentation / Source](https://github.com/ad3m3r5/scratch-map)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  scratch-map:
    container_name: scratch-map
    ports:
      - 13453:8080
    environment:
      - PORT=8080
      - DATA_DIR=./data
    volumes:
      - ./opt/docker/scratch-map/data:/data
    image: ghcr.io/ad3m3r5/scratch-map:latest
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
<br><br><br><br>

---