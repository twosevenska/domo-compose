# Domo-compose

![domo_logo](/domo_logo.jpg)

## Containers
* [twosevenska/nginx-proxy](https://cloud.docker.com/u/twosevenska/repository/docker/twosevenska/nginx-proxy) - Nginx Proxy
* [linuxserver/sabnzbd](https://github.com/linuxserver/docker-sabnzbd) - SABnzbd
* [linuxserver/sonarr](https://github.com/linuxserver/docker-sonarr) - Sonarr
* [linuxserver/muximux](https://github.com/linuxserver/docker-muximux) - Muximux
* [emby/embyserver](https://hub.docker.com/r/emby/embyserver/) - Emby
* [linuxserver/radarr](https://hub.docker.com/r/linuxserver/radarr) - Radarr
* [twosevenska/jmusicbot](https://cloud.docker.com/u/twosevenska/repository/docker/twosevenska/jmusicbot)JMusicbot
* [silverwind/droppy](https://github.com/silverwind/droppy) - Droppy

## Docker Setup
1. Update `./uidgid.env` with the user and group IDs that will be running Docker
2. Update `./.env` and add your own Hostname as well as your directory for config, downloads, movies and TV folders
3. Create the necessary folders and make sure the user/group running the containers is the same
4. Run `docker-compose up -d` to start all the Usenet services or the Makefile

### Services setup
* The htpc guides are pretty nifty: https://www.htpcguides.com
