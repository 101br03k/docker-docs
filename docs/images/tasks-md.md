# **Tasks.md**

#### [Documentation / Source](https://github.com/BaldissaraMatheus/Tasks.md)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  tasks.md:
    image: baldissaramatheus/tasks.md
    container_name: tasks.md
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - ./tasks:/tasks
      - ./config:/config
    restart: unless-stopped
    ports:
      - 46882:8080
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)