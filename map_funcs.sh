#!/bin/bash

function map_insert {
#map is $1, key is $2, value is $3  
#insert creates a file with whatever $2 contains 
	echo $3 > ./$1/$2
}

function map_retrieve {
#map is $1, key is $2
#A simple cat gets the value back 
	cat ./$1/$2
}

function map_delete {
#map is $1
	rm -rf ./$1
}

function map_swap {
#map is $1 key 1 is $2 key 2 is $3 
	local temp=`cat ./$1/$2`
	cat ./$1/$3 > ./$1/$2
	echo $temp > ./$1/$3
}

function map_size {
#map is $1
	 du -s $1 | awk '{print $1}'
}

function map_find {
#map is $1, key to be found is $2
	if [ ! -f ./$1/$2 ]; then 
		echo "0"
	else
		echo ./$1/$2
	fi
}

function map_count {
#map is $1, key is $2
	if [ ! -f ./$1/$2 ]; then
		echo "0"
	else
		echo "1"
	fi
}

function map_value_compare {
#map is $1, key is $2, key is $3 
	if [ `cat ./$1/$2` -gt `cat ./$1/$3` ]; then
		echo "./$1/$2"
	else
		echo "./$1/$3"
	fi
}
