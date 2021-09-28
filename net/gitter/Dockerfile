FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm python desktop-file-utils --overwrite /usr/include/crypt.h --overwrite /usr/lib/libcrypt.so

RUN cd /home/builder && \
git clone https://aur.archlinux.org/gconf.git && \
cd gconf && \
rmakepkg -si --noconfirm --nodeps

RUN cd /home/builder && \
git clone https://aur.archlinux.org/gitter.git && \
cd gitter && \
rmakepkg -si --noconfirm --nodeps

ENTRYPOINT ["adduser-and-run.sh", "gitter"]
