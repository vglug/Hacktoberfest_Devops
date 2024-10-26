#!/bin/bash

# Get today's date in YYYY-MM-DD format
today=$(date +"%Y-%m-%d")

# Prompt the user for a file extension
read -p "Please enter a file extension: " extension

# Prompt the user for a file prefix, with the default being today's date
read -p "Please enter a file prefix: (Press ENTER for $today) " prefix

# If the user presses enter without typing a prefix, use today's date
prefix=${prefix:-$today}

# Find all files with the given extension
files=(*."$extension")

# Check if any files with the specified extension exist
if [ -z "${files[*]}" ]; then
    echo "No files found with the .$extension extension."
else
    # Loop through each file and rename it with the new prefix
    for file in *."$extension"; do
        # Extract the base name without the extension
        filename="${file%.$extension}"
        
        # Display the original file name and the new file name
        echo "Renaming $file to ${prefix}-${filename}.${extension}."
        
        # Rename the file
        mv "$file" "${prefix}-${filename}.${extension}"
    done
fi
