# Draw-io

#### [Documentation / Source](https://github.com/jgraph/docker-drawio "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
version: "3.5"
services:
  drawio:
    image: jgraph/drawio
    container_name: drawio
    restart: unless-stopped
    ports:
      - 44594:8080
      - 44595:8443
    environment:
      PUBLIC_DNS: domain
      ORGANISATION_UNIT: unit
      ORGANISATION: org
      CITY: city
      STATE: state
      COUNTRY_CODE: country
    healthcheck:
      test:
        - CMD-SHELL
        - curl -f http://IPADRESHERE:44594|| exit 1
      interval: 1m30s
      timeout: 10s
      retries: 5
      start_period: 10s
    network_mode: bridge
networks: {}

```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/ "docs.docker.com/envoirment variables")
