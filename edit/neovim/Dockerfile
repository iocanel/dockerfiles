FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ENV TERM xterm-256color
ENV LANG C.UTF-8
ENV CMAKE_EXTRA_FLAGS=-DENABLE_JEMALLOC=OFF

RUN pacman -Sy --noconfirm neovim

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/vim

COPY entrypoint.sh /usr/local/bin/copy-vimfiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "copy-vimfiles-and-start.sh"]
