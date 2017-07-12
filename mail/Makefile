REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

vdirsyncer:
	cd vdirsyncer && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

offlineimap:
	cd offlineimap && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME} 

notmuch:
	cd notmuch && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

neomutt:
	cd neomutt && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: neomutt vdirsyncer notmuch offlineimap
