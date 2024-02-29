# Glances

#### [Documentation / Source](https://glances.readthedocs.io/en/latest/ "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
version: '3.3'
services:
    glances:
        restart: unless-stopped
        ports:
            - '61208-61209:61208-61209'
        environment:
            - GLANCES_OPT=-w
        volumes:
            - '/var/run/docker.sock:/var/run/docker.sock:ro'
        pid: host
        image: docker.io/nicolargo/glances
        container_name: glances
        network_mode: bridge

```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/ "docs.docker.com/envoirment variables")
