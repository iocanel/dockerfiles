FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm termite

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/termite

COPY entrypoint.sh /usr/local/bin/copy-termitefiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh",  "copy-termitefiles-and-start.sh"]
