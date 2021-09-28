FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm git emacs

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/spacemacs
RUN git clone https://github.com/syl20bnr/spacemacs /usr/local/share/spacemacs/.emacs.d
COPY entrypoint.sh /usr/local/bin/copy-emacsfiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "copy-emacsfiles-and-start.sh"]
