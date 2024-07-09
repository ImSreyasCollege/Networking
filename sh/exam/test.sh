function infinate() {
    read -p "Enter a number : " num
    sum=0
    for digit in $(echo $num | fold -w1); do
        sum=$((sum+digit))
    done
    echo "Sum is : $sum"
}

while true; do infinate; done
infinate