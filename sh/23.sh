#!/bin/bash

PS3="Select option: "
select opt in "List current directory" "Print working directory" "Display date" "Display users logged in" "Exit"; do
    case $opt in
        "List current directory")
            ls
            ;;
        "Print working directory")
            pwd
            ;;
        "Display date")
            date
            ;;
        "Display users logged in")
            who
            ;;
        "Exit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
