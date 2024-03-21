#!/bin/bash

echo "Enter the radius of the circle:"
read radius
area=$(echo "3.1415 * ($radius ^ 2)" | bc)
circumference=$(echo "2 * 3.1415 * $radius" | bc)
echo "The area of the circle is: $area"
echo "The circumference of the circle is: $circumference"
