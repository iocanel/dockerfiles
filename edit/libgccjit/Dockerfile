FROM iocanel/base-devel:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

#RUN pacman -Sy --noconfirm gtk3 alsa-lib ttf-dejavu ttf-font-awesome adobe-source-code-pro-fonts jansson libotf gpm giflib
RUN pacman -Sy --noconfirm gcc-ada dejagnu
RUN cd /home/builder && \
git clone https://aur.archlinux.org/libgccjit.git && \
cd libgccjit && \
rmakepkg -si --noconfirm

ENTRYPOINT ["adduser-and-run.sh", "emacs"]
