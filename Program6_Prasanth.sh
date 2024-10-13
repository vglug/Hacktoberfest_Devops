#!/bin/bash

###A shell script to print out array of items in separate line###

ANIMAL=('MAN' 'BEAR' 'PIG' 'DOG' 'CAT' 'SHEEP')

for _ in "${ANIMAL[@]}"; do
	echo $_
done
