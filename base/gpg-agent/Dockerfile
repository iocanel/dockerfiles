FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN apk --no-cache --update add gnupg pinentry

ENV GPG_TTY=/dev/pts/1

ENTRYPOINT ["adduser-and-run.sh"]
