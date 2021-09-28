FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm gtk3 nss libxss libxkbfile unzip

RUN cd /home/builder && \
git clone https://aur.archlinux.org/zulip-desktop-bin.git && \
cd zulip-desktop-bin && \
rmakepkg -si --noconfirm --nodeps

ENTRYPOINT ["adduser-and-run.sh", "zulip"]
