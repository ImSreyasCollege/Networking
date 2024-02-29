#!/bin/bash

echo "Enter a number:"
read num
smallest=$(echo $num | grep -o "[0-9]" | sort | head -n1)
echo "Smallest digit: $smallest"
