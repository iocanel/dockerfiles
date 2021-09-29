#!/bin/sh

if [ ! -d $HOME/.config/alacritty ]; then
	mkdir -p $HOME/.config/alacritty
fi

if [ ! -f $HOME/.config/alacritty/alacritty.yml ]; then
    cp  /usr/local/share/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
fi

alacritty $*
