#!/bin/bash

# Function to count files
file_count() {
    # Declare a local variable
    local count
    # Use ls -p to list files and grep -v to exclude directories
    count=$(ls -p | grep -v / | wc -l)
    echo "Number of files in the current directory: $count"
}

# Call the function
file_count

