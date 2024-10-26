# Uptime-Kuma

#### [Documentation / Source](https://github.com/louislam/uptime-kuma)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  uptime-kuma:
    image: louislam/uptime-kuma:latest
    container_name: uptime-kuma
    volumes:
      - ./uptime-kuma-data:/app/data
      - /var/run/docker.sock:/var/run/docker.sock
    ports:
      - 3001:3001
    restart: always
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)