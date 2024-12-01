# **Docuseal**

#### [Documentation / Source](https://www.docuseal.co/install)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  app:
    depends_on:
      postgres:
        condition: service_healthy
    image: docuseal/docuseal:latest
    container_name: docuseal
    ports:
      - 41861:3000
    volumes:
      - ./docuseal:/data/docuseal
    environment:
      - FORCE_SSL=${HOST}
      - DATABASE_URL=postgresql://postgres:postgres@postgres:5432/docuseal
  postgres:
    image: postgres:15
    container_name: docuseal_postgres
    volumes:
      - ./pg_data:/var/lib/postgresql/data
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_DB: docuseal
    healthcheck:
      test:
        - CMD-SHELL
        - pg_isready -U postgres
      interval: 5s
      timeout: 5s
      retries: 5
networks: {}

```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)