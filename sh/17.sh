#!/bin/bash

echo "Enter numbers separated by space:"
read -a numbers
IFS=$'\n' sorted=($(sort -n <<<"${numbers[*]}"))
len=${#sorted[@]}
echo "Second highest number: ${sorted[len-2]}"
