REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: absolutize filteropts helpers_install readopt

readopt:
	cd readopt && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

filteropts:
	cd filteropts && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

helpers_install:
	sudo cp readopt/entrypoint.sh /usr/local/bin/readopt
	sudo cp filteropts/entrypoint.sh /usr/local/bin/filteropts

all: absolutize filteropts helpers_install readopt
