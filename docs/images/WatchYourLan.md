# WatchYourLan

#### [Documentation / Source](https://github.com/aceberg/WatchYourLAN "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
version: "3"
services:
  wyl:
    image: aceberg/watchyourlan
    container_name: watch-your-lan
    network_mode: "host"
    restart: unless-stopped
    volumes:
    - ~/.dockerdata/wyl:/data
    environment:
      TZ: Europe/Amsterdam              # required: needs your TZ for correct time
      IFACE: "eth0"                     # required: 1 or more interface
      DBPATH: "/data/db.sqlite"         # optional, default: /data/db.sqlite
      GUIIP: "localhost"                # optional, default: localhost
      GUIPORT: "8840"                   # optional, default: 8840
      TIMEOUT: "180"                    # optional, time in seconds, default: 60
    #   SHOUTRRR_URL: ""                # optional, set url to notify
      THEME: "darkly"                   # optional
      IGNOREIP: "no"                    # optional
```
