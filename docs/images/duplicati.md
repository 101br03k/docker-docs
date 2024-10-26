# **Dupicati**

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-duplicati)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  duplicati:
    image: lscr.io/linuxserver/duplicati:latest
    container_name: duplicati
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europa/Amsterdam
      - CLI_ARGS= #optional
    volumes:
      - SOURCEFOLDERHERE:/config
      - /backup:/backups
      - /docker/:/source
    ports:
      - 8200:8200
    restart: unless-stopped
    #if using nginxproxymanager exclude: /docker-setup/nginxproxymanager/letsencrypt
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)