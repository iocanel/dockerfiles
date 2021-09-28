REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: base edit helpers_install  latex  mail misc net shell term

base:
	cd base && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME} 

edit: base
	cd edit && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

helpers_install:
	cd shell && make -f Makefile helpers_install 

latex: base
	cd latex && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

mail: base
	cd mail && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

misc: base
	cd misc && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

net: base
	cd net && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

shell:
	cd shell && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

term: base
	cd term && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}


all: base edit helpers_install  latex  mail misc net shell term
