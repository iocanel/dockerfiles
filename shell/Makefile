REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

readopt:
	cd readopt && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

filteropts:
	cd filteropts && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

helpers_install:
	cp readopt/entrypoint.sh /usr/local/bin/readopt
	cp filteropts/entrypoint.sh /usr/local/bin/filteropts

all: readopt filteropts
