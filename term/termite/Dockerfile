FROM iocanel/gosu:latest

MAINTAINER Ioannis Canellos <iocanel@gmail.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache --virtual .runtime-deps \
    ttf-dejavu ncurses gperf libtool musl=1.1.16-r15 gtk+3.0 pcre2 && \
    apk add --no-cache --virtual .build-deps \
    git g++ autoconf automake pkgconfig make gtk-doc gtk+3.0-dev gnutls-dev pcre2-dev

RUN git clone -b 0.48.3.a --single-branch https://github.com/thestinger/vte-ng.git /usr/src/vte-ng && \
    cd /usr/src/vte-ng && \
    ./autogen.sh --disable-gtk-doc --disable-introspection --disable-vala && \
    make && make install && \
    cd .. && rm -rf vte-ng

RUN git clone -b v12 --single-branch --recursive https://github.com/thestinger/termite.git /usr/src/termite && \
    cd /usr/src/termite && \
    sed -i "s/tic -x termite.terminfo -o \${DESTDIR}\${TERMINFO}/tic -x -o \$\{DESTDIR\}\$\{TERMINFO\} termite.terminfo/g" Makefile && \
    cat Makefile && \
    make &&  make install && \
    cd .. && rm -rf termite

RUN apk del .build-deps

RUN mkdir -p /usr/local/share
COPY files /usr/local/share/termite

COPY entrypoint.sh /usr/local/bin/copy-termitefiles-and-start.sh

ENTRYPOINT ["adduser-and-run.sh",  "copy-termitefiles-and-start.sh"]
