# **WatchYourLan**

#### [Documentation / Source](https://github.com/aceberg/WatchYourLAN)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  wyl:
    image: ghcr.io/aceberg/watchyourlan:latest
    container_name: watch-your-lan
    network_mode: host
    restart: unless-stopped
    volumes:
      - ./.dockerdata/wyl:/data/WatchYourLAN
    environment:
      TZ: Europa/Amsterdam # required: needs your TZ for correct time
      IFACES: ens18 # required: 1 or more interface
      HOST: 192.168.0.11 # optional, default: 0.0.0.0
      PORT: "8840" # optional, default: 8840
      TIMEOUT: "180" # optional, time in seconds, default: 120
      SHOUTRRR_URL: $SHOUTRRR_URL # optional, set url to notify
      THEME: sand # optional
      COLOR: dark # optional
      network_mode: bridge
      AUTH_USER: $user
      AUTH_PASSWORD: $password
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)