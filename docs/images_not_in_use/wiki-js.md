# **Wiki.js**

#### [Documentation / Source](https://docs.requarks.io/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  wikijs:
    ports:
      - 19804:3000
    container_name: wikijs
    restart: unless-stopped
    environment:
      - DB_TYPE=postgres
      - DB_HOST=192.168.0.21
      - DB_PORT=5432
      - DB_USER=${USERNAME}
      - DB_PASS=${PASSWORD}
      - DB_NAME=wikijs_db
    image: ghcr.io/requarks/wiki:latest
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
