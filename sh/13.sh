#!/bin/bash

awk '{if ($3 >= 90) print $0, "A"; else if ($3 >= 80) print $0, "B"; else if ($3 >= 70) print $0, "C"; else if ($3 >= 60) print $0, "D"; else print $0, "F"}' grades.txt
