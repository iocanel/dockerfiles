#!/bin/sh

#
# Credits to Deni Bertovic for https://denibertovic.com/posts/handling-permissions-with-docker-volumes/
#

useradd -d /home/$LOCAL_USER_NAME -u $LOCAL_USER_ID $LOCAL_USER_NAME
export HOME=/home/$LOCAL_USER_NAME
export USER=$LOCAL_USER_NAME
mkdir -p $HOME
chown $LOCAL_USER_NAME:$LOCAL_USER_NAME $HOME
chmod 700 $HOME


exec gosu $LOCAL_USER_NAME "$@"
