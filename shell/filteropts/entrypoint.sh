#!/bin/sh

function nfirstargs() {
        num=$1
        current=0
        shift
        for var in "$@";do
                if [ $current -lt $num ]; then
                        current=$(($current + 1))
                        echo $var
                else
                        break
                fi
        done
}

function filteropts() {
        num=$1
        if echo $num | grep '[^0-9]' > /dev/null; then
                echo "$@"
        else
                skip=$(($num+2))
                tofilter=`nfirstargs $@`
                next=false
                for var in "${@:$skip}"; do
                        if $next; then
                                next=false
                                continue;
                        fi

                        for i in $tofilter; do
                                if [ $var = "$i" ]; then
                                        next=true
                                        break;
                                fi
                        done
                        if ! $next; then
                                echo $var
                        fi
                done
        fi
}

echo `filteropts "$@"`
