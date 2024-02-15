#!/bin/bash
echo "Prime numbers between 1 and 50 are:"
for ((i=2; i<=50; i++)); do
    is_prime=true
    for ((j=2; j<=i/2; j++)); do
        if [ $((i % j)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done
    if $is_prime; then
        echo $i
    fi
done
