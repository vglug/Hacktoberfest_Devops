#!/bin/bash


###A shell script to rename all files by specified file extension in current directory###
###by default current date is prefixed to the old file name to create new file name date format(YYYY-MM-DD)###
###when prefix is given then the prefix is added insted of the date###

DAY=$(date +%Y-%m-%d)
read -p "Please enter a file extension: " EXTENT
read -p "Please enter a file prefix: (Press ENTER for $DAY)." PREFIX

for I in $(ls *$EXTENT)
do
	if [[ -z $PREFIX ]]
	then
		mv $I ./"$DAY-$I"
        echo "Renaming $I to $DAY-$I."
	else
		mv $I ./"$PREFIX-$I"
		echo "Renaming $I to $PREFIX-$I."
	fi
done
