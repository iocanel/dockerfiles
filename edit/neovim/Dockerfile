#
# Credits to Mark Huge for https://github.com/markhuge/dockerfiles
#          & Nick Lang for https://github.com/fxdgear/alpine-neovim
#
FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ENV TERM xterm-256color
ENV LANG C.UTF-8
ENV CMAKE_EXTRA_FLAGS=-DENABLE_JEMALLOC=OFF

#
# Dependency Notes:
# 1. gettext-dev is required on runtime
RUN echo http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \ 
    apk add --no-cache --virtual .build-deps \
    git autoconf gcc g++ make automake cmake curl ca-certificates ncurses-dev openssl-dev cyrus-sasl-dev  && \
    apk add --no-cache --virtual .run-deps \
    gettext-dev libxslt libtool lua-mpack 

RUN git clone -b v1.1.0 --single-branch https://github.com/neovim/unibilium.git /usr/src/unibilium && \
    cd /usr/src/unibilium && make && \
    make install && \
    cd .. && rm -rf unibilium

RUN git clone https://github.com/neovim/libtermkey.git /usr/src/libtermkey && \
    cd /usr/src/libtermkey && make && \
    make install && \
    cd .. && rm -rf libtermkey

RUN git clone https://github.com/neovim/libvterm.git /usr/src/libvterm && \
    cd /usr/src/libvterm && make && \
    make install && \
    cd ../ && rm -rf libvterm

RUN git clone -b v0.2.0 --single-branch https://github.com/neovim/neovim.git /usr/src/neovim && \
    cd /usr/src/neovim && make &&\
    make install && \
    cd .. && rm -rf neovim

RUN  apk del .build-deps

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/vim

COPY entrypoint.sh /usr/local/bin/copy-vimfiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "copy-vimfiles-and-start.sh"]
