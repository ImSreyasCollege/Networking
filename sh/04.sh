#!/bin/bash

echo "Enter a number:"
read number
reverse=$(echo $number | rev)
if [ $number -eq $reverse ]; then
    echo "The number and its reverse are the same."
else
    echo "The number and its reverse are not the same."
fi
