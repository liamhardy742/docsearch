#!/bin/bash

# set the directory to search
dir="."

# initialize count to 0
count=0

# loop through all files in the directory
for file in "$dir"/*; do
  # check if the file is a text file
  if [[ $file == *.txt ]]; then
    # check if the file has less than 5 lines
    if [ $(wc -l < "$file") -lt 5 ]; then
      # increment count
      ((count++))
    fi
  fi
done

# output the final count
echo "Number of text files with less than 5 lines: $count"