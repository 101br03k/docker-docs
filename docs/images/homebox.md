# Homebox

#### [Documentation / Source](https://github.com/hay-kot/homebox)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  homebox:
    image: ghcr.io/sysadminsmedia/homebox:latest
    container_name: homebox
    restart: unless-stopped
    environment:
    - HBOX_LOG_LEVEL=info
    - HBOX_LOG_FORMAT=text
    - HBOX_WEB_MAX_UPLOAD_SIZE=10
    volumes:
      - homebox-data:/data/
    ports:
      - 3100:7745
    network_mode: bridge

volumes:
   homebox-data:
     driver: local
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)