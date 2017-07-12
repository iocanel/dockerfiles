#This is a copy from: libray/python:3.6-alpine with just a different base image
FROM iocanel/pass:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN apk update && apk add chromium libexif udev ttf-dejavu

ENTRYPOINT ["adduser-and-run.sh", "chromium-browser"]
