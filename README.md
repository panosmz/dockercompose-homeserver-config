## Home Server Docker-Compose Configuration by [@panosmz](https://github.com/panosmz)
Various services running on my [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) via a :whale: [Docker Compose](https://docs.docker.com/compose/) script, with [Traefik](https://traefik.io/) as a reverse proxy, with auto SSL certificate generation/renewal. Complete guide on my blog post [here](https://blog.panosmazarakis.com/multi-purpose-raspberry-pi-3-home-server-docker-traefik-nextcloud-ddclient/).

**Containers:**
* [Traefik](https://hub.docker.com/_/traefik) - Traefik Reverse Proxy
* [Portainer](https://hub.docker.com/r/portainer/portainer/) - Docker Management UI
* [Home Assistant](https://hub.docker.com/r/homeassistant/raspberrypi3-homeassistant/) - Home Automation
* [Mosquitto](https://hub.docker.com/_/eclipse-mosquitto) - Eclipse Mosquitto MQTT Broker
* [Nextcloud](https://hub.docker.com/_/nextcloud) - File Hosting
* [Gogs](https://hub.docker.com/r/gogs/gogs-rpi) - Git Service
* [Ghost](https://hub.docker.com/r/arm32v7/ghost/) - Blogging Platform
* [Transmission-OpenVPN](https://hub.docker.com/r/haugene/transmission-openvpn) - Transmission torrent client through OpenVPN
* [Tautulli](https://hub.docker.com/r/linuxserver/tautulli/) - Plex Media Server Monitoring
* [Redis](https://hub.docker.com/r/arm32v7/redis/) - In-Memory Key-Value Store
* [MariaDB](https://hub.docker.com/r/hypriot/rpi-mysql/) - MariaDB MySQL Database Server