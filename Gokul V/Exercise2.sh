#!/bin/bash

# Function to count files in a specified directory
file_count() {
    # Declare a local variable for the directory
    local dir=$1
    # Declare a local variable for the count
    local count
    # Use ls -p and grep to count only files in the specified directory
    count=$(ls -p "$dir" | grep -v / | wc -l)
    # Display the directory name and file count
    echo "$dir:"
    echo "$count"
}

# Call the function for /etc, /var, and /usr/bin directories
file_count /etc
file_count /var
file_count /usr/bin
