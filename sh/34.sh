#!/bin/bash

echo "Enter strings separated by space:"
read -a strings

leng=${#strings[@]}
echo $leng
reversed_strings=()
for ((i=($leng-1); i>=0; i--)); do
    reversed_strings+=($(echo ${strings[i]} | rev))
done

echo "Initial array : ${strings[@]}"
echo -n "Reversed list of strings: ${reversed_strings[@]}"
