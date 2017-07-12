REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

gosu:
	cd gosu && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

gpg-agent:
	cd gpg-agent && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

pass: gpg-agent
	cd pass && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

python:
	cd python && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: pass python
