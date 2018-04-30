#!/bin/bash

servername=$1
configfile=~/.sshservers

if [ -z "$servername" ]; then
	echo "usage: ${0##*/} servername"
	exit -1
fi


set -- `awk -v "servername=$servername" '$1 == servername {print $2,$3}' $configfile`

if [ -n "$1" ] && [ -n "$2" ]; then
	ssh -p $2 $1
else
	echo "can't find $servername in $configfile" >&2
fi
