FROM iocanel/gpg-agent:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk --no-cache --update add pass

ENV PASSWORD_STORE_GPG_OPTS="--no-permission-warning"

ENTRYPOINT ["adduser-and-run.sh", "pass"]
