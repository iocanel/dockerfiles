FROM iocanel/latex:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm texlive-langgreek

ENTRYPOINT ["adduser-and-run.sh", "pdftex"]
