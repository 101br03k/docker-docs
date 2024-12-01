# **Yamtrack**

#### [Documentation / Source](https://github.com/FuzzyGrim/Yamtrack)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  yamtrack:
    container_name: yamtrack
    image: ghcr.io/fuzzygrim/yamtrack
    restart: unless-stopped
    depends_on:
      - redis
    environment:
      - SECRET=longstring
      - REDIS_URL=redis://redis:6379
    volumes:
      - ./db:/yamtrack/db
    ports:
      - "13336:8000"

  redis:
    container_name: yamtrack-redis
    image: redis:7-alpine
    restart: unless-stopped
    volumes:
      - redis_data:/data

volumes:
  redis_data:
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
