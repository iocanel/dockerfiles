FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm texlive-core texlive-bin texlive-science --overwrite /usr/lib/libcrypt.so --overwrite /usr/include/crypt.h

ENTRYPOINT ["adduser-and-run.sh", "pdftex"]
