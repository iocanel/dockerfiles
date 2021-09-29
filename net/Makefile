REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: chromium firefox gitter qutebrowser zulip slack http-server

chromium:
	cd chromium && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

firefox:
	cd firefox && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

gitter:
	cd gitter && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

qutebrowser:
	cd qutebrowser && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

slack:
	cd slack && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

zulip:
	cd zulip && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

http-server:
	cd http-server && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: chromium firefox gitter qutebrowser slack zulip http-server
