REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

shell:
	cd shell && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

base:
	cd base && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME} 

mail: base
	cd mail && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

edit: base
	cd edit && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

net: base
	cd net && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}
	
term: base
	cd term && make -f Makefile all REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

helpers_install:
	cd shell && make -f Makefile helpers_install 

all: mail
