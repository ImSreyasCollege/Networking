#!/bin/bash

echo "Enter a number:"
read num
fact(){
    fact=1
    for((i=1; i<=num; i++)); do 
        fact=$((fact * i))
    done
    echo $fact
}
echo "Factorial of $num is: $(fact)"