FROM iocanel/emacs:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm git

RUN mkdir -p /usr/local/share
RUN git clone --depth 1 https://github.com/hlissner/doom-emacs /usr/local/share/doom/.emacs.d
RUN git clone --depth 1 https://github.com/iocanel/doom.d /usr/local/share/doom/.doom.d
COPY entrypoint.sh /usr/local/bin/copy-emacsfiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "copy-emacsfiles-and-start.sh"]
