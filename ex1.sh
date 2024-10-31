#!/bin/bash
function find_count()
{
	local C=$(ls -lp|grep -v /|wc -l)
	echo " $C"
}
find_count


