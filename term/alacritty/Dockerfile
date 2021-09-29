FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm alacritty

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/alacritty

COPY entrypoint.sh /usr/local/bin/ensure-config-and-start.sh

ENTRYPOINT ["adduser-and-run.sh",  "ensure-config-and-start.sh"]
