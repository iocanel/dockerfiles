FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN apk --no-cache --update add offlineimap

ENV PASSWORD_STORE_GPG_OPTS="--no-permission-warning"
ENV LANG=en_US.utf-8
ENTRYPOINT ["adduser-and-run.sh", "offlineimap"]
