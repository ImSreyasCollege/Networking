#!/bin/bash

# Output file
output_file="output.txt"

# Loop through files 22.sh to 34.sh
for ((i=22; i<=34; i++))
do
    # Filename
    file="${i}.sh"
    
    # Check if file exists
    if [ -f "$file" ]; then
        # Append file contents to output file
        echo -e "program number $i\n" >> "$output_file"
        cat "$file" >> "$output_file"
        echo -e "\n\n----------------------------------------\n\n" >> "$output_file"
    fi
done

echo "Contents of files 22.sh to 34.sh have been written to $output_file"
