# GHstats

#### [Documentation / Source](https://github.com/vladkens/ghstats)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  ghstats:
    image: ghcr.io/vladkens/ghstats:latest
    container_name: ghstats
    restart: always
    environment:
      - GITHUB_TOKEN=${GH_TK}
    env_file: .env # or with .env file
    ports:
      - 7190:8080
    volumes:
      - ./data:/app/data
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)