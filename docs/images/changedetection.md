# **Changedetection.io**

#### [Documentation / Source](changedetection.io)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  changedetection:
    image: ghcr.io/dgtlmoon/changedetection.io
    container_name: changedetection
    hostname: changedetection
    volumes:
      - changedetection-data:/datastore

    ports:
      - 5000:5000
    restart: unless-stopped
volumes:
  changedetection-data: null
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)