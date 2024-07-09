function infinate() {
    read -p "Enter a string : " str
    if [[ $str = $(echo $str | rev) ]]; then
        echo "$str is palindrome"  
    else
        echo "$str is not palindrome"  
    fi
}

# while true; do infinate; done
infinate


