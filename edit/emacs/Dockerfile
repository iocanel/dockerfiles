#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN apk update && apk add emacs-x11

ENTRYPOINT ["adduser-and-run.sh", "emacs"]
