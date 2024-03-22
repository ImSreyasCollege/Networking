#!/bin/bash
echo "Enter a number:"
read number
length=${#number}
sum=0
for ((i=0; i<$length; i++)); do
    digit=${number:i:1}
    sum=$((sum + digit ** length))
done
if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi
