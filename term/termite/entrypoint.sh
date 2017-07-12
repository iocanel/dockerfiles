#!/bin/sh

if [ ! -d $HOME/.config/termite ]; then
	mkdir -p $HOME/.config/termite
fi

if [ ! -f $HOME/.config/termite/config ]; then
    cp  /usr/local/share/termite/config $HOME/.config/termite/config
fi

termite $*
