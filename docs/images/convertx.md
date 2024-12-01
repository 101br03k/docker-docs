# **Convertx**

#### [Documentation / Source](https://github.com/C4illin/ConvertX)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  convertx:
    image: ghcr.io/c4illin/convertx:latest
    restart: unless-stopped
    container_name: convertx
    ports:
      - 3000:3000 #5061
    environment:
      # Defaults are listed below. All are optional.
      - ACCOUNT_REGISTRATION=false # true or false, doesn't matter for the first account (e.g. keep this to false if you only want one account)
      - JWT_SECRET=tokentokentoken3! # will use randomUUID() by default
      - HTTP_ALLOWED=true # setting this to true is unsafe, only set this to true locally
    volumes:
      - ./convertx:/app/data
    network_mode: bridge
volumes:
  convertx:
    driver: local
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
