#!/bin/bash

echo "Enter numbers separated by space:"
read -a numbers
largest=${numbers[0]}
smallest=${numbers[0]}
for num in "${numbers[@]}"; do
    if [ $num -gt $largest ]; then
        largest=$num
    fi
    if [ $num -lt $smallest ]; then
        smallest=$num
    fi
done
echo "Largest: $largest"
echo "Smallest: $smallest"
