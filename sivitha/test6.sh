#!/bin/bash
today=$(date +%Y%m%d)
read -p "please enter a file extension: " extension
read -p "please enter a file prefix: (Press ENTER for $today). "prefix
prefix=${prefix:-$today}
shopt -s nullglob
for file in *.$extension
do
	base_name="${file%.$extension}"
	new_name=${prefix}${base_name}.$extension"
	echo "Renaming $file to $new_name."
	mv "$file" "$new_name"
done
shopt -u nullglob
