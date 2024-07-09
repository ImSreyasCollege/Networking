function infinate() {
    read -p "Enter a filename : " filename
    awk '{for(i=0; i<=NF; i++) a[$i]++} END {for(k in a) print k, a[k]}' $filename
}

# while true; do infinate; done
infinate


