REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: alacritty

alacritty:
	cd alacritty && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: alacritty
