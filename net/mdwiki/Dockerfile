FROM iocanel/http-server:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

COPY entrypoint.sh /usr/local/bin/ensure-config-and-start.sh
RUN mkdir -p /usr/local/mdwiki/defaults
COPY index.html /usr/local/mdwiki/defaults/index.html
COPY index.md /usr/local/mdwiki/defaults/index.md

ENTRYPOINT ["adduser-and-run.sh", "ensure-config-and-start.sh"]
