#!/bin/bash

echo "Enter password:"
read password
isStrong=true
if [[ ${#password} -lt 8 ]]; then
    echo "Password length should be at least 8 characters"
    isStrong=false
    # exit 1
fi
if ! [[ $password =~ [0-9] ]]; then
    echo "Password should contain at least one digit"
    isStrong=false
    # exit 1
fi
if ! [[ $password =~ [A-Z] ]]; then
    echo "Password should contain at least one uppercase letter"
    isStrong=false
    # exit 1
fi
if ! [[ $password =~ [a-z] ]]; then
    echo "Password should contain at least one lowercase letter"
    isStrong=false
    # exit 1
fi
if $isStrong; then 
    echo "Password is strong..."
else 
    echo "Password is not strong..."
fi
