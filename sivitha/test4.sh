#!/bin/bash
file_count() {
	local dir=$1
	local count=$(ls -l "$dir"|grep -v /|wc -l)
	echo "$dir:"
	echo "$count"
}
file_count /etc
file_count /var

