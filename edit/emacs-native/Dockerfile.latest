#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/libgccjit:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm gtk3 alsa-lib ttf-dejavu ttf-font-awesome adobe-source-code-pro-fonts jansson libotf gpm giflib
RUN cd /home/builder && \
git clone https://aur.archlinux.org/emacs-native-comp-git.git && \
cd emacs-native-comp-git && \
rmakepkg -si --noconfirm

ENTRYPOINT ["adduser-and-run.sh", "emacs"]
