REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: gosu gpg-agent pass pavucontrol python pip nodejs npm base-devel

gosu:
	cd gosu && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

gpg-agent: gosu
	cd gpg-agent && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

pass: gpg-agent
	cd pass && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

pavucontrol: python
	cd pavucontrol && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

python: pass
	cd python && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

pip: python
	cd pip && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

nodejs: pass
	cd nodejs && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

npm: nodejs
	cd npm && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

base-devel: pip
	cd base-devel && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: pip pavucontrol base-devel npm
