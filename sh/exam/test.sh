function infinate() {
    read -p "Enter the number of rows : " rows
    for ((i=0; i<rows; i++)); do 
        for ((j=0; j<=i; j++)); do
            if [[ $j -eq 0 ]] || [[ $i -eq $j ]]; then
                val=1
            else
                num=$((i-j+1))
                den=$j
                val=$((val * num / den))
            fi
            echo -n "$val "
        done
        echo
    done
}

# while true; do infinate; done
infinate