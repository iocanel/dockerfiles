#!/bin/sh

mkdir -p $HOME/.emacs.d
mkdir -p $HOME/.spacemacs.d
cp /usr/local/share/spacemacs/.spacemacs $HOME/.spacemacs.d/init.el
cp -r /usr/local/share/spacemacs/.emacs.d/* $HOME/.emacs.d/

emacs $*
