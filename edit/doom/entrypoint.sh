#!/bin/sh

mkdir -p $HOME/.emacs.d
mkdir -p $HOME/.doom.d
cp -r /usr/local/share/doom/.emacs.d/* $HOME/.emacs.d/
cp -r /usr/local/share/doom/.doom.d/* $HOME/.doom.d/
pushd $HOME/.emacs.d > /dev/null
if [ ! -d $HOME/.emacs.d/.local ]; then
	./bin/doom install
fi
popd > /dev/null

emacs $*
