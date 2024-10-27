#!/bin/bash

###A shell script that counts number of files in current directory###
###`ls -p` listouts contents of the current directory with "/" postfixed to directory name###
###`grep -v */` gets only words without "/" at the end of the file name###
###`wc -l` counts number of lines(files) from the piped grep output###

function file_count()
{
	ls -p | grep -v */ |wc -l
}

file_count
