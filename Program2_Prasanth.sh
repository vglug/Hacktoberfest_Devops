#!/bin/bash


###A shell script that counts number of files in current directory###
###`echo $1 ":"`echos function file_count()'s first postional argument passed from function call####
###`ls -p $1` listouts contents of the given directory with "/" postfixed to directory name###
###`grep -v */` gets only words without "/" at the end of the file name###
###`wc -l` counts number of lines(files) from the piped grep output###

function file_count()
{
	echo $1 ":"
	ls -p $1 | grep -v */ |wc -l
}

###function call passes scripts postional argument(file path) to the function###
if [[ -z $1 ]]
then
		echo "run the script with file path ex:(bash Programing_Prasanth.sh /dev)."
else
	file_count $1
fi
