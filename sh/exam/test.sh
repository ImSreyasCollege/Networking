function infinate() {
    read -p "Enter a number : " num
    sum=0
    for digit in $(echo $num | fold -w1); do
        sum=$((sum+digit**2))
    done
    echo "Sum of squares of digit : $sum"
}

while true; do infinate; done
infinate