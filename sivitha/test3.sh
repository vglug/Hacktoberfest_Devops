#!/bin/bash
file_count(){
	#count of current file in the directory
local count=$(ls -p|grep -v / |wc -l)
echo "$count"
}
file_count
