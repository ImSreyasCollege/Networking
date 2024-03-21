#!/bin/bash

for file in *; do
    if [[ -f $file && ! -x $file ]]; then
        chmod u+rwx "$file"
        echo "$file is made executable"
    fi
done
