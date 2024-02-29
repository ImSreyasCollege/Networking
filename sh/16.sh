#!/bin/bash

sum=0
for ((i=50; i<=100; i++)); do
    if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -ne 0 ]; then
        sum=$((sum + i))
    fi
done
echo "Sum of numbers divisible by 3 and not by 5 between 50 and 100: $sum"
