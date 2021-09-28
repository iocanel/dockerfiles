REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

.PHONY: vim neovim emacs spacemacs

vim:
	cd vim && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

neovim:
	cd neovim && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

emacs:
	cd emacs && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

spacemacs:
	cd spacemacs && make -f Makefile build REPOSITORY=${REPOSITORY} VERSION=${VERSION} USERNAME=${USERNAME}

all: vim neovim emacs spacemacs
