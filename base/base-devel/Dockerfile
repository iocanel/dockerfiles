FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN useradd -d /home/builder -u 1001 builder && mkdir -p /home/builder && chown -R builder /home/builder
RUN pacman -Sy --noconfirm git base-devel fakeroot zip unzip

# Hack makepkg to work as root
RUN sed '/exit $E_ROOT$/d' /bin/makepkg > /usr/local/bin/rmakepkg && chmod +x /usr/local/bin/rmakepkg

COPY entrypoint.sh /usr/bin/adduser-and-run.sh
ENTRYPOINT ["adduser-and-run.sh"]
