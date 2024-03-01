#!/bin/bash

calculate_grade() {
    if [ $1 -ge 90 ]; then
        grade="A"
    elif [ $1 -ge 80 ]; then
        grade="B"
    elif [ $1 -ge 70 ]; then
        grade="C"
    elif [ $1 -ge 60 ]; then
        grade="D"
    else
        grade="F"
    fi
    echo $grade
}

echo "Enter student name:"
read name
echo "Enter student's mark:"
read mark

grade=$(calculate_grade $mark)

echo "Student Name: $name"
echo "Student mark: $mark"
echo "Student Grade: $grade"
