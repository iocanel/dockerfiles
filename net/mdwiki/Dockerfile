FROM iocanel/http-server:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

COPY entrypoint.sh /usr/local/bin/ensure-config-and-start.sh

ENTRYPOINT ["adduser-and-run.sh", "ensure-config-and-start.sh"]
