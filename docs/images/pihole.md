# PiHole

#### [Documentation / Source](https://github.com/pi-hole/docker-pi-hole/ "Documentation / Source")

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/ "docs.docker.com Why use Compose?")):

```yaml
version: "3"
services:
  pihole:
    container_name: pihole
    image: pihole/pihole:latest
    ports:
      - "53:53/tcp"
      - "53:53/udp"
      - "67:67/udp"
      - "80:80/tcp"
      - "445:443/tcp"
    environment:
      TZ: 'TZ=Europe/Amsterdam'
    volumes:
       - './etc-pihole/:/etc/pihole/'
       - './etc-dnsmasq.d/:/etc/dnsmasq.d/'
    dns:
      - 127.0.0.1
      - 1.1.1.1
    cap_add:
      - NET_ADMIN
    restart: unless-stopped
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/ "docs.docker.com/envoirment variables")
