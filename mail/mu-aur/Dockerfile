FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm xapian-core gmime3

RUN cd /home/builder && \
git clone https://aur.archlinux.org/mu.git && \
cd mu && \
rmakepkg -si --noconfirm --nodeps

ENV PASSWORD_STORE_GPG_OPTS="--no-permission-warning"
ENV LANG=en_US.utf-8
ENTRYPOINT ["adduser-and-run.sh", "mu"]
