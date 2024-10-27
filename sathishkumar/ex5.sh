#!/bin/bash
read -p "Enter the path" PATH
if [[ -e $PATH ]]
then echo " $PATH passwords are enabled "
fi
if [[ -w $PATH ]]
then echo " You have permissions to edit $PATH "
else
	echo " You do Not have permissions to edit $PATH "
fi
