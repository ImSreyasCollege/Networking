# reverse using function 
# sum of digit 
# palindrome or not 

function reverse() {
    echo "$(echo $1 | rev)"
}
function palindrome() {
    local num=$1
    local rev=$(reverse $num)
    if ((num == rev)); then 
        echo "$num is palindrom"
    else
        echo "$num is not palindrom"
    fi
}
function sum_of_digit() {
    local sum=0
    for digit in $(echo $1 | fold -w1); do
        sum=$((sum+digit))
    done
    echo $sum
}

read -p "Enter a number : " num
echo "Reverse of the number is : $(reverse $num)"
palindrome $num
echo "Sum of the digits is : $(sum_of_digit $num)"