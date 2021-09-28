#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/latex:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm texlive-langgreek

ENTRYPOINT ["adduser-and-run.sh", "pdftex"]
