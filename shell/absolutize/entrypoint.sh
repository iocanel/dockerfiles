#!/bin/sh

function absolutize() {
    next=false
    for var in "$@"; do
        if [ -f $var ]; then
            realpath $var
        else
            echo "$var"
        fi
    done
}

echo `absolutize "$@"`
