#!/bin/bash

#NOTE: this map creates a .tmp in the working dirctory  

if [ "`type -t map_insert`" != 'function' ]; then
	source map_funcs.sh
fi

map_created="0"
MAPLOCATION=".tmp"

while [ "$map_created" -eq "0" ]
do
	MAPLOCATION=$MAPLOCATION$RANDOM$(date +"%Y%j%H%M%S")
	if [ ! -d "$MAPLOCATION" ]; then
		mkdir $MAPLOCATION
		map_created="1"
	fi
done

echo $MAPLOCATION
