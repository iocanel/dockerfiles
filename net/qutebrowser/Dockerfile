FROM iocanel/pavucontrol:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm qutebrowser qt5-webengine youtube-dl --overwrite /usr/include/crypt.h --overwrite /usr/lib/libcrypt.so
RUN pacman -Sy --noconfirm rofi
RUN ln -s /bin/rofi /bin/dmenu
COPY files/usr/local/bin/* /usr/local/bin/

ENTRYPOINT ["adduser-and-run.sh", "qutebrowser"]
