FROM iocanel/python:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm blueman bluez bluez-utils pulseaudio-bluetooth pavucontrol

ENTRYPOINT ["adduser-and-run.sh", "pavucontrol"]
