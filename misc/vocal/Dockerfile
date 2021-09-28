FROM iocanel/pavucontrol:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm gvfs vocal

ENTRYPOINT ["adduser-and-run.sh", "com.github.needleandthread.vocal"]
