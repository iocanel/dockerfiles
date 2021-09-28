#
# Credits to Mark Huge for https://github.com/markhuge/dockerfiles
#
FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ENV TERM xterm-256color
ENV LANG C.UTF-8
ENV BROWSER lynx

RUN pacman -Sy --noconfirm neomutt

RUN mkdir -p /home/$LOCAL_USER_NAME/.mutt

ENTRYPOINT ["adduser-and-run.sh", "mutt"]
