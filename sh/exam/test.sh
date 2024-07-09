function infinate() {
    sum=0
    for ((i=50; i<=100; i++)); do
        if ((i%3 == 0)) && ((i%5 != 0)); then   
            sum=$((sum+i))
        fi
    done
    echo "Sum is : $sum"
}

# while true; do infinate; done
infinate