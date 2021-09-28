FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm notmuch

ENTRYPOINT ["adduser-and-run.sh", "notmuch"]
