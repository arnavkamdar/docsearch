#!/bin/bash

# Check if a file name is provided
if [ $# -eq 0 ]; then
  echo "Error: No file name provided"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File not found"
  exit 1
fi

# Count the number of digits in the file
count=$(grep -o '[0-9]' "$1" | wc -l)

# Print the result
echo "Number of digits in $1: $count"