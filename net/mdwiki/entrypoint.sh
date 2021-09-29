#!/bin/sh

if [ ! -f /wiki/index.md ]; then
    mkdir -p /tmp/wiki
    echo "Wiki not found!"
    echo "# mdwiki" > /tmp/wiki/index.md
    echo "---" >> /tmp/wiki/index.md
    echo "Your wiki is empty please add content to the wiki directory (defaults to $HOME/wiki) and rerun!" >> /tmp/wiki/index.md
    http-server /tmp/wiki
else
    http-server /wiki
fi
