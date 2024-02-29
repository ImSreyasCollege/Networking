#!/bin/bash

echo "Enter strings separated by space:"
read -a strings
for ((i=0; i<${#strings[@]}; i++)); do
    rev=$(echo ${strings[i]} | rev)
    reversed_strings[$i]=$rev
done
echo "Reversed list of strings:"
for string in "${reversed_strings[@]}"; do
    echo "$(echo $string | rev)"
done
