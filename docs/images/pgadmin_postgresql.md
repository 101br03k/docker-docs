# pgAdmin & PostgreSQL

#### Documentation / Source:

pgAdmin:[ pgAdmin.org](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html)

PostgreSQL: [hub.docker.com/_/postgres](https://github.com/docker-library/docs/tree/master/postgres)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose")):

```yaml
version: "3.3"
services:
  homepage:
    image: ghcr.io/gethomepage/homepage:latest
    container_name: homepage
    ports:
      - 3006:3000
    volumes:
      - /docker/homepage-config:/app/config # Make sure your local config directory exists
      - /var/run/docker.sock:/var/run/docker.sock:ro # (optional) For docker integrations
    # user: 1000:1000 optional, not compatibile with direct socket see https://gethomepage.dev/en/configs/docker/#using-socket-directly
    restart: unless-stopped
    network_mode: bridge
```
