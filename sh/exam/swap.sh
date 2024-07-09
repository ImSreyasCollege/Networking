read -p "Enter the numbers : " -a nums

largest=0
for ((i=0; i<${#nums[@]}; i++)); do
    if ((${nums[$largest]} < ${nums[$i]})); then
        largest=$i
    fi
done
s_largest=0
if ((largest == 0)); then 
    s_largest=1
fi
for ((i=0; i<${#nums[@]}; i++)); do
    if ((${nums[$s_largest]} < ${nums[$i]})) && ((i!=largest)); then
        s_largest=$i
    fi
done
echo "Largest number is : ${nums[$largest]}"
echo "Second largest number is : ${nums[$s_largest]}"
echo 
echo "First array is : ${nums[@]}"
temp=${nums[$largest]}
nums[$largest]=${nums[$s_largest]}
nums[$s_largest]=$temp
echo "Modified array is : ${nums[@]}"