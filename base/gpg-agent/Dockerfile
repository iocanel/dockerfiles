FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm gnupg pinentry

ENV GPG_TTY=/dev/pts/1

ENTRYPOINT ["adduser-and-run.sh"]
