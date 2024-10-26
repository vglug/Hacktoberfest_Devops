#!/bin/bash

# Get today's date in YYYY-MM-DD format
today=$(date +"%Y-%m-%d")

# Find all .jpg files in the current directory
jpg_files=(*.jpg)

# Check if there are any .jpg files
if [ -z "${jpg_files[*]}" ]; then
    echo "No .jpg files found in the current directory."
else
    # Initialize a counter for renamed files
    renamed_count=0

    # Loop over all .jpg files in the current directory
    for file in *.jpg; do
        # Extract the filename without the extension
        filename="${file%.jpg}"
        
        # Rename the file by prepending the date
        mv "$file" "${today}-${filename}.jpg"
        
        # Increment the counter for renamed files
        renamed_count=$((renamed_count + 1))
    done

    # Output the number of renamed files
    echo "Renamed $renamed_count .jpg file(s)."
fi

