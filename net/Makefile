REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

chromium:
	cd chromium && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: chromium
