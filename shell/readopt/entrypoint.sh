#!/bin/sh

function getarg() {
        filter=$1
        next=false 
        for var in "${@:2}"; do
                if $next; then
                        echo $var
                        break;
                fi
                
                if [ "$var" = "$filter" ]; then
                        next=true
                fi
        done
}

echo `getarg "$@"`
