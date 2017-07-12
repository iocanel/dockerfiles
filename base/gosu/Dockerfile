FROM alpine:3.6

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ARG username=iocanel
ARG userid=1000

ENV LOCAL_USER_NAME=$username
ENV LOCAL_USER_ID=$userid

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk --no-cache --update add gosu libc6-compat

COPY entrypoint.sh /usr/local/bin/adduser-and-run.sh
ENTRYPOINT ["adduser-and-run.sh"]
