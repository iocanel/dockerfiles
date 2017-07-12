#!/bin/sh

if [ ! -d $HOME/.vim ]; then
    cp -r /usr/local/share/vim/.vim $HOME/.vim
fi

if [ ! -f $HOME/.vimrc ]; then
    cp  /usr/local/share/vim/.vimrc $HOME/.vimrc
fi

vim $*
