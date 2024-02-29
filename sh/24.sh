#!/bin/bash

for file in *; do
    if [ -f $file ] && [ ! -x $file ]; then
        chmod +x $file
        echo "$file is made executable"
    fi
done
