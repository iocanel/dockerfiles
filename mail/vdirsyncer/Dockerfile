FROM iocanel/python:latest

MAINTAINER iocanel@gmail.com


RUN pacman -Sy --noconfirm python-pip
RUN pip3 install vdirsyncer requests-oauthlib

ENV VDIRSYNCER_CONFIG=/home/$LOCAL_USER_NAME/.config/vdirsyncer/config

ENTRYPOINT ["adduser-and-run.sh", "vdirsyncer"]
