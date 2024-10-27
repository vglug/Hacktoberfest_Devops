#!/bin/bash
shopt -s nullglob
today=$( date +%Y%m%d )
for file in *.jpg
do
	base_name="${file%.jpg}"
	mv "$file" "${today}${base_name}.jpg"
done
shopt -u nullglob
