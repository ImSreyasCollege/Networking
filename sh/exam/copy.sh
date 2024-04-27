if [[ $# -ne 2 ]]; then 
    echo "needs two parameters..."
fi 
if cmp -s $1 $2; then 
    echo "$1 and $2 are same"
else 
    echo "$1 and $2 are not same"
fi
echo "something more."
