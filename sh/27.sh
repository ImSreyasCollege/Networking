#!/bin/bash

echo "Enter the number of rows:"
read rows
for ((i=0; i<rows; i++)); do
    for ((j=0; j<=i; j++)); do
        if [ $j -eq 0 ] || [ $i -eq $j ]; then
            coef=1
        else
            num=$((i-j+1))
            den=$j
            coef=$((coef * num / den))
        fi
        echo -n "$coef "
    done
    echo
done
