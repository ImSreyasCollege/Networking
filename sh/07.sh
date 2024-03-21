#!/bin/bash
echo "Enter the coefficients (a, b, c) of the quadratic equation (ax^2 + bx + c):"
read a b c
discriminant=$((b * b - 4 * a * c))
if [ $discriminant -gt 0 ]; then
    root1=$(echo "(-$b + sqrt($discriminant)) / (2 * $a)" | bc -l)
    root2=$(echo "(-$b - sqrt($discriminant)) / (2 * $a)" | bc -l)
    echo "The roots are real and different."
    echo "Root 1 = $root1, Root 2 = $root2"
elif [ $discriminant -eq 0 ]; then
    root=$(echo "-$b / (2 * $a)" | bc -l)
    echo "The roots are real and equal."
    echo "Root 1 = Root 2 = $root"
else
    real_part=$(echo "-$b / (2 * $a)" | bc -l)
    imaginary_part=$(echo "sqrt($((-1 * discriminant))) / (2 * $a)" | bc -l)
    echo "The roots are complex and different."
    echo "Root 1 = $real_part + $imaginary_part i"
    echo "Root 2 = $real_part - $imaginary_part i"
fi
