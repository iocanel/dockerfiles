#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN apk update && apk add --no-cache --virtual .fetch-deps git
RUN apk add --no-cache emacs-x11
RUN git clone https://github.com/syl20bnr/spacemacs /home/$LOCAL_USER_NAME/.emacs.d
RUN apk del .fetch-deps

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/spacemacs

COPY entrypoint.sh /usr/local/bin/copy-emacsfiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "copy-emacsfiles-and-start.sh"]
