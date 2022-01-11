#!/bin/sh

mkdir -p ~/wiki
if [ ! -f ~/wiki/lib ]; then
    cp -r /usr/local/mdwiki/lib ~/wiki/lib
fi
if [ ! -f ~/wiki/index.html ]; then
    cp /usr/local/mdwiki/defaults/index.html ~/wiki
fi

if [ ! -f ~/wiki/index.md ]; then
    cp /usr/local/mdwiki/defaults/index.md ~/wiki
fi

http-server ~/wiki
