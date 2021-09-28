#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/python:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm python-pip

ENTRYPOINT ["adduser-and-run.sh", "pip"]
