# **Dockcheck-Web**

#### [Documentation / Source](https://github.com/Palleri/DCW)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  dcw:
    container_name: dockcheck-web
    image: palleri/dcw:latest
    hostname: 100-docker # optional, will be displayed in the ui
    restart: unless-stopped
    network_mode: bridge
    ports:
      - 20012:80
    volumes:
      - ./data:/var/www/html
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - /etc/localtime:/etc/localtime:ro
    environment:
      TOKEN: superSecretPassw0rd # required // Also used by the exporter
      NOTIFY: "true" # optional
      NOTIFY_URLS: $NOTIFY_URLS # optional
      #EXCLUDE: "nginx,plex,prowlarr"              # optional // Exclude containers from being checked for updates
      CRON_TIME: 12:56 # optional
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
