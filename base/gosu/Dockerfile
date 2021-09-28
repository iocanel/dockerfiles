FROM archlinux:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

ARG username=iocanel
ARG userid=1000

ENV LOCAL_USER_NAME=$username
ENV LOCAL_USER_ID=$userid

RUN pacman -Sy --noconfirm git go
RUN go get github.com/tianon/gosu 
RUN cp ~/go/bin/gosu /bin/gosu

COPY entrypoint.sh /usr/bin/adduser-and-run.sh
ENTRYPOINT ["adduser-and-run.sh"]
