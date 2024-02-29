#!/bin/bash

echo "Enter a number:"
read num
reverse() {
    local n=$1
    local rev=0
    while [ $n -gt 0 ]; do
        remainder=$((n % 10))
        rev=$((rev * 10 + remainder))
        n=$((n / 10))
    done
    echo $rev
}
echo "Reverse of $num is: $(reverse $num)"
