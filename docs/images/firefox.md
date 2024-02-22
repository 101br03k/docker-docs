# FireFox

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-firefox/ "Documentation / Source")

2x firefox container with seperate config dirs

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
services:
  firefox1:
    image: lscr.io/linuxserver/firefox:latest
    container_name: firefox1
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europa/Amsterdam
    volumes:
      - ./configff1:/config
    ports:
      - 6901:3000
      - 6902:3001
    shm_size: "1gb"
    restart: unless-stopped
  firefox2:
    image: lscr.io/linuxserver/firefox:latest
    container_name: firefox2
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europa/Amsterdam
    volumes:
      - ./configff2:/config
    ports:
      - 6911:3000
      - 6912:3001
    shm_size: "1gb"
    restart: unless-stopped

```
