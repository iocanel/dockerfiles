FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm chromium

RUN cd /home/builder && \
git clone https://aur.archlinux.org/slack-desktop.git && \
cd slack-desktop && \
rmakepkg -si --noconfirm --nodeps

ENTRYPOINT ["adduser-and-run.sh", "slack"]
