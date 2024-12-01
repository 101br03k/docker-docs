# **Otter Wiki**

#### [Documentation / Source](https://otterwiki.com/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  otterwiki:
    image: redimp/otterwiki:2
    restart: unless-stopped
    ports:
      - 10934:80
    volumes:
      - ./app-data:/app-data
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
