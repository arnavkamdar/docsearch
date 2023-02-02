#!/bin/bash

# Check if a number is provided
if [ $# -eq 0 ]; then
  echo "Error: No number provided"
  exit 1
fi

# Calculate the natural logarithm of the provided number
result=$(echo "l($1)" | bc -l)

# Print the result
echo "ln($1) = $result"
