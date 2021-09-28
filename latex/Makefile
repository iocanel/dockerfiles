REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: latex latex-greek

latex:
	cd latex && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

latex-greek:
	cd latex-greek && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: latex latex-greek
