FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm evince

ENTRYPOINT ["adduser-and-run.sh", "evince"]
