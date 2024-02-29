#!/bin/bash

echo "Enter the number of terms:"
read n
echo "Number series:"
for ((i=1; i<=n; i++)); do
    echo -n "$i "
done
