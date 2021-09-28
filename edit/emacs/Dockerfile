FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN pacman -Sy --noconfirm gtk3 alsa-lib ttf-dejavu ttf-font-awesome adobe-source-code-pro-fonts
RUN cd /home/builder && \
git clone https://aur.archlinux.org/emacs27-git.git && \
cd emacs27-git && \
rmakepkg -si --noconfirm

ENTRYPOINT ["adduser-and-run.sh", "emacs"]
