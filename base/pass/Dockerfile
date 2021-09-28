FROM iocanel/gpg-agent:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm pass

ENV PASSWORD_STORE_GPG_OPTS="--no-permission-warning"

ENTRYPOINT ["adduser-and-run.sh", "pass"]
