# Baikal

#### [Documentation / Source](https://hub.docker.com/r/ckulka/baikal)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
version: "2"
services:
  baikal:
    image: ckulka/baikal:nginx
    restart: always
    ports:
      - "49695:80"
    volumes:
      - config:/var/www/baikal/config
      - data:/var/www/baikal/Specific

volumes:
  config:
  data:
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
