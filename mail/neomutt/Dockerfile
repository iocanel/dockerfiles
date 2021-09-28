#
# Credits to Mark Huge for https://github.com/markhuge/dockerfiles
#
FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ENV TERM xterm-256color
ENV LANG C.UTF-8
ENV BROWSER lynx

RUN apk add --virtual .build-deps \
   git autoconf gcc g++ make automake && \
   apk add --virtual .run-deps \
   ncurses-dev openssl-dev  cyrus-sasl-dev gettext-dev libxslt

RUN git clone -b neomutt-20170602 --single-branch https://github.com/neomutt/neomutt.git /usr/src/neomutt

WORKDIR /usr/src/neomutt

RUN autoconf &>/dev/null; exit 0
RUN autoreconf -vif
RUN ./configure \
      --with-mailpath=/home/user/.mutt/ \
      --enable-imap \
      --with-ssl \
      --enable-sidebar \
      --with-sasl \
      --enable-smtp && \
    make && make install

RUN apk add --virtual .tool-deps lynx vim && \
    apk del .build-deps

RUN mkdir -p /home/$LOCAL_USER_NAME/.mutt

ENTRYPOINT ["adduser-and-run.sh", "mutt"]
