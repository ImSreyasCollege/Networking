#!/bin/bash

echo "Enter password:"
read password
if [[ ${#password} -lt 8 ]]; then
    echo "Password length should be at least 8 characters"
    exit 1
fi
if ! [[ $password =~ [0-9] ]]; then
    echo "Password should contain at least one digit"
    exit 1
fi
if ! [[ $password =~ [A-Z] ]]; then
    echo "Password should contain at least one uppercase letter"
    exit 1
fi
if ! [[ $password =~ [a-z] ]]; then
    echo "Password should contain at least one lowercase letter"
    exit 1
fi
echo "Password is strong"
