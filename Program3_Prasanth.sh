#!/bin/bash


###A shell script to rename all .jpg files in current directory###
###current date is prefixed to the old file name to create new file name date format(YYYY-MM-DD)###

DAY=$(date +%Y-%m-%d-)
for I in $(ls *.jpg)
do
	mv $I ./"$DAY$I"
done
