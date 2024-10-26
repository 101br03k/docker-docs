# Tasks.md

#### [Documentation / Source](https://www.twingate.com/docs/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  connector:
    environment:
      - TWINGATE_NETWORK=${TWINGATE_NETWORK}
      - TWINGATE_ACCESS_TOKEN=${TWINGATE_ACCESS_TOKEN}
      - TWINGATE_REFRESH_TOKEN=${TWINGATE_REFRESH_TOKEN}
      - TWINGATE_LABEL_HOSTNAME=`hostname`
      - TWINGATE_LOG_ANALYTICS=v2
      - TWINGATE_LABEL_DEPLOYED_BY=docker
    container_name: twingate
    network_mode: host
    restart: unless-stopped
    pull_policy: always
    image: twingate/connector:latest
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)