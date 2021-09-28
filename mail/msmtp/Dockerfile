FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm msmtp

ENV PASSWORD_STORE_GPG_OPTS="--no-permission-warning"
ENV LANG=en_US.utf-8
ENTRYPOINT ["adduser-and-run.sh", "msmtp"]
