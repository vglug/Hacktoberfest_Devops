#!/bin/bash
function find_count()
{
	DIR_PATH=$1
	echo " $(basename "$DIR_PATH"): "
        local C=$(ls -lp $DIR_PATH |grep -v /|wc -l)
	echo " $C"
}
find_count "/etc"
find_count "/var"
find_count "/usr/bin"



