#!/bin/bash

echo "Enter a string:"
read str
count=$(echo $str | grep -o -i "[aeiou]" | wc -l)
echo "Number of vowels: $count"
