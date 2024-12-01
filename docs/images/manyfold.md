# **Manyfold**

#### [Documentation / Source](https://github.com/manyfold3d/manyfold)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  app:
    image: ghcr.io/manyfold3d/manyfold:latest
    container_name: manyfold
    ports:
      - 3214:3214
    volumes:
      - ./libraries:/libraries
    environment:
      PUID: 1000 # The ID of the user the app will run as
      PGID: 1000 # The ID of the group the app will run as
      SECRET_KEY_BASE: a_nice_long_random_string
      REDIS_URL: redis://redis:6379/1
      # Database connection details; we recommend using a separate PostgreSQL
      # server for best performance
      DATABASE_ADAPTER: postgresql
      DATABASE_HOST: postgres
      DATABASE_USER: manyfold
      DATABASE_PASSWORD: password
      DATABASE_NAME: manyfold

    depends_on:
      - postgres
      - redis
    networks:
      - manyfold
    links:
      - postgres
      - redis
  postgres:
    image: postgres:15
    volumes:
      - db_data:/var/lib/postgresql/data
    environment:
      POSTGRES_USER: manyfold
      POSTGRES_PASSWORD: password
    restart: on-failure
    networks:
      - manyfold
  redis:
    image: redis:7
    restart: on-failure
    networks:
      - manyfold
volumes:
  db_data: null
networks:
  manyfold: null
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
