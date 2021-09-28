FROM iocanel/python:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm youtube-dl

ENTRYPOINT ["adduser-and-run.sh", "youtube-dl"]
