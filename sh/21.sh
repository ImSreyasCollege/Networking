#!/bin/bash

echo "Enter the number of terms:"
read n
a=0
b=1
echo "Fibonacci Series:"
for ((i=0; i<n; i++)); do
    echo "$a"
    fn=$((a + b))
    a=$b
    b=$fn
done
