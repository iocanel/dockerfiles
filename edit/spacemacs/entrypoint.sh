#!/bin/sh

if [ ! -d $HOME/.emacs.d ]; then
    cp -r /usr/local/share/spacemacs/.emacs.d $HOME/.emacs.d
fi
if [ ! -f $HOME/.spacemacs ]; then
    cp -r /usr/local/share/spacemacs/.spacemacs $HOME/.spacemacs
fi

emacs $*

