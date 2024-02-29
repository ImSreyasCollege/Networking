#!/bin/bash

echo "Enter a number:"
read num
sum_digits() {
    local n=$1
    local sum=0
    while [ $n -gt 0 ]; do
        sum=$((sum + n % 10))
        n=$((n / 10))
    done
    echo $sum
}
echo "Sum of digits: $(sum_digits $num)"
