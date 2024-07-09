read -p "Enter a set of elements : " -a nums
IFS=$'\n'
sorted_arr=($(echo "${nums[*]}" | sort -n))
# sorted_arr=($(for i in ${nums[@]}; do echo "$i"; done | sort -n))
echo "Array is : ${nums[@]}"
echo "Sorted array is : ${sorted_arr[@]}"

largest=${sorted_arr[${#sorted_arr[@]}-1]}
s_largest=${sorted_arr[${#sorted_arr[@]}-2]}

echo "Largest is : $largest"
echo "Second largest is : $s_largest"

