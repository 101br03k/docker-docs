# **Linkwarden**

#### [Documentation / Source](https://github.com/linkwarden/linkwarden)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  postgres:
    image: postgres:16-alpine
    env_file: .env
    container_name: linkwarden-postgres
    restart: always
    volumes:
      - ./pgdata:/var/lib/postgresql/data
  linkwarden:
    container_name: linkwarden
    env_file: .env
    environment:
      - DATABASE_URL=postgresql://postgres:${POSTGRES_PASSWORD}@postgres:5432/postgres
    restart: always
    image: ghcr.io/linkwarden/linkwarden:latest
    ports:
      - 39739:3000
    volumes:
      - ./data:/data/data
    depends_on:
      - postgres
networks: {}
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)