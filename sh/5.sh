#!/bin/bash
echo "Enter a string:"
read string
reverse=$(echo $string | rev)
if [ "$string" == "$reverse" ]; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
