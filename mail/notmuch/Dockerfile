FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk --no-cache --update add notmuch

ENTRYPOINT ["adduser-and-run.sh", "notmuch"]
