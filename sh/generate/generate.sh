#!/bin/bash

for i in {11..34}; do
    cat << EOF > ${i}.sh
#!/bin/bash

EOF

    case $i in
        1)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'if [ $((num % 2)) -eq 0 ]; then' >> ${i}.sh
            echo '    echo "$num is even"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$num is odd"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        2)
            echo 'echo "Enter a year:"' >> ${i}.sh
            echo 'read year' >> ${i}.sh
            echo 'if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then' >> ${i}.sh
            echo '    echo "$year is a leap year"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$year is not a leap year"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        3)
            echo 'echo "Enter the radius of the circle:"' >> ${i}.sh
            echo 'read radius' >> ${i}.sh
            echo 'area=$(echo "3.14 * $radius * $radius" | bc)' >> ${i}.sh
            echo 'circumference=$(echo "2 * 3.14 * $radius" | bc)' >> ${i}.sh
            echo 'echo "Area of the circle: $area"' >> ${i}.sh
            echo 'echo "Circumference of the circle: $circumference"' >> ${i}.sh
            ;;
        4)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'reverse=$(echo $num | rev)' >> ${i}.sh
            echo 'if [ $num -eq $reverse ]; then' >> ${i}.sh
            echo '    echo "$num and its reverse are the same"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$num and its reverse are not the same"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        5)
            echo 'echo "Enter a string:"' >> ${i}.sh
            echo 'read str' >> ${i}.sh
            echo 'reverse=$(echo $str | rev)' >> ${i}.sh
            echo 'if [ "$str" = "$reverse" ]; then' >> ${i}.sh
            echo '    echo "$str is a palindrome"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$str is not a palindrome"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        6)
            echo 'echo "Enter numbers separated by space:"' >> ${i}.sh
            echo 'read -a numbers' >> ${i}.sh
            echo 'sum_odd=0' >> ${i}.sh
            echo 'sum_even=0' >> ${i}.sh
            echo 'for num in "${numbers[@]}"; do' >> ${i}.sh
            echo '    if [ $((num % 2)) -eq 0 ]; then' >> ${i}.sh
            echo '        sum_even=$((sum_even + num))' >> ${i}.sh
            echo '    else' >> ${i}.sh
            echo '        sum_odd=$((sum_odd + num))' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "Sum of odd numbers: $sum_odd"' >> ${i}.sh
            echo 'echo "Sum of even numbers: $sum_even"' >> ${i}.sh
            ;;
        7)
            echo 'echo "Enter the coefficients of quadratic equation (a, b, c):"' >> ${i}.sh
            echo 'read a b c' >> ${i}.sh
            echo 'd=$((b * b - 4 * a * c))' >> ${i}.sh
            echo 'if [ $d -gt 0 ]; then' >> ${i}.sh
            echo '    root1=$(echo "scale=2; (-1 * $b + sqrt($d)) / (2 * $a)" | bc)' >> ${i}.sh
            echo '    root2=$(echo "scale=2; (-1 * $b - sqrt($d)) / (2 * $a)" | bc)' >> ${i}.sh
            echo '    echo "Roots are real and different: $root1, $root2"' >> ${i}.sh
            echo 'elif [ $d -eq 0 ]; then' >> ${i}.sh
            echo '    root=$(echo "scale=2; -1 * $b / (2 * $a)" | bc)' >> ${i}.sh
            echo '    echo "Roots are real and equal: $root"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    real_part=$(echo "scale=2; -1 * $b / (2 * $a)" | bc)' >> ${i}.sh
            echo '    imaginary_part=$(echo "scale=2; sqrt(-1 * $d) / (2 * $a)" | bc)' >> ${i}.sh
            echo '    echo "Roots are complex: $real_part + i$imaginary_part, $real_part - i$imaginary_part"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        8)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'n=$num' >> ${i}.sh
            echo 'sum=0' >> ${i}.sh
            echo 'while [ $num -gt 0 ]; do' >> ${i}.sh
            echo '    digit=$((num % 10))' >> ${i}.sh
            echo '    sum=$((sum + digit * digit * digit))' >> ${i}.sh
            echo '    num=$((num / 10))' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'if [ $sum -eq $n ]; then' >> ${i}.sh
            echo '    echo "$n is an Armstrong number"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$n is not an Armstrong number"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        9)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'is_prime="true"' >> ${i}.sh
            echo 'for ((i=2; i<=num/2; i++)); do' >> ${i}.sh
            echo '    if [ $((num % i)) -eq 0 ]; then' >> ${i}.sh
            echo '        is_prime="false"' >> ${i}.sh
            echo '        break' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'if [ "$is_prime" = "true" ]; then' >> ${i}.sh
            echo '    echo "$num is a prime number"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$num is not a prime number"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        10)
            echo 'echo "Prime numbers between 1 and 50:"' >> ${i}.sh
            echo 'for ((num=2; num<=50; num++)); do' >> ${i}.sh
            echo '    is_prime="true"' >> ${i}.sh
            echo '    for ((i=2; i<=num/2; i++)); do' >> ${i}.sh
            echo '        if [ $((num % i)) -eq 0 ]; then' >> ${i}.sh
            echo '            is_prime="false"' >> ${i}.sh
            echo '            break' >> ${i}.sh
            echo '        fi' >> ${i}.sh
            echo '    done' >> ${i}.sh
            echo '    if [ "$is_prime" = "true" ]; then' >> ${i}.sh
            echo '        echo -n "$num "' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        11)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'sum=0' >> ${i}.sh
            echo 'while [ $num -gt 0 ]; do' >> ${i}.sh
            echo '    digit=$(( $num % 10 ))' >> ${i}.sh
            echo '    sum=$(( $sum + $digit * $digit ))' >> ${i}.sh
            echo '    num=$(( $num / 10 ))' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "The sum of square of digits is: $sum"' >> ${i}.sh
            ;;
        12)
            echo 'echo "Enter a string:"' >> ${i}.sh
            echo 'read str' >> ${i}.sh
            echo 'count=$(echo $str | grep -o -i "[aeiou]" | wc -l)' >> ${i}.sh
            echo 'echo "Number of vowels: $count"' >> ${i}.sh
            ;;
        13)
            # Assuming grades are stored in a file named "grades.txt"
            echo 'awk '\''{if ($3 >= 90) print $0, "A"; else if ($3 >= 80) print $0, "B"; else if ($3 >= 70) print $0, "C"; else if ($3 >= 60) print $0, "D"; else print $0, "F"}'\'' grades.txt' >> ${i}.sh
            ;;
        14)
            echo 'echo "Enter numbers separated by space:"' >> ${i}.sh
            echo 'read -a numbers' >> ${i}.sh
            echo 'largest=${numbers[0]}' >> ${i}.sh
            echo 'smallest=${numbers[0]}' >> ${i}.sh
            echo 'for num in "${numbers[@]}"; do' >> ${i}.sh
            echo '    if [ $num -gt $largest ]; then' >> ${i}.sh
            echo '        largest=$num' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo '    if [ $num -lt $smallest ]; then' >> ${i}.sh
            echo '        smallest=$num' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "Largest: $largest"' >> ${i}.sh
            echo 'echo "Smallest: $smallest"' >> ${i}.sh
            ;;
        15)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'smallest=$(echo $num | grep -o "[0-9]" | sort | head -n1)' >> ${i}.sh
            echo 'echo "Smallest digit: $smallest"' >> ${i}.sh
            ;;
        16)
            echo 'sum=0' >> ${i}.sh
            echo 'for ((i=50; i<=100; i++)); do' >> ${i}.sh
            echo '    if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -ne 0 ]; then' >> ${i}.sh
            echo '        sum=$((sum + i))' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "Sum of numbers divisible by 3 and not by 5 between 50 and 100: $sum"' >> ${i}.sh
            ;;
        17)
            echo 'echo "Enter numbers separated by space:"' >> ${i}.sh
            echo 'read -a numbers' >> ${i}.sh
            echo 'IFS=$'\''\n'\'' sorted=($(sort -n <<<"${numbers[*]}"))' >> ${i}.sh
            echo 'len=${#sorted[@]}' >> ${i}.sh
            echo 'echo "Second highest number: ${sorted[len-2]}"' >> ${i}.sh
            ;;
        18)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'sum_digits() {' >> ${i}.sh
            echo '    local n=$1' >> ${i}.sh
            echo '    local sum=0' >> ${i}.sh
            echo '    while [ $n -gt 0 ]; do' >> ${i}.sh
            echo '        sum=$((sum + n % 10))' >> ${i}.sh
            echo '        n=$((n / 10))' >> ${i}.sh
            echo '    done' >> ${i}.sh
            echo '    echo $sum' >> ${i}.sh
            echo '}' >> ${i}.sh
            echo 'echo "Sum of digits: $(sum_digits $num)"' >> ${i}.sh
            ;;
        19)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'reverse() {' >> ${i}.sh
            echo '    local n=$1' >> ${i}.sh
            echo '    local rev=0' >> ${i}.sh
            echo '    while [ $n -gt 0 ]; do' >> ${i}.sh
            echo '        remainder=$((n % 10))' >> ${i}.sh
            echo '        rev=$((rev * 10 + remainder))' >> ${i}.sh
            echo '        n=$((n / 10))' >> ${i}.sh
            echo '    done' >> ${i}.sh
            echo '    echo $rev' >> ${i}.sh
            echo '}' >> ${i}.sh
            echo 'echo "Reverse of $num is: $(reverse $num)"' >> ${i}.sh
            ;;
        20)
            echo 'echo "Enter a number:"' >> ${i}.sh
            echo 'read num' >> ${i}.sh
            echo 'fact=1' >> ${i}.sh
            echo 'for ((i=1; i<=num; i++)); do' >> ${i}.sh
            echo '    fact=$((fact * i))' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "Factorial of $num is: $fact"' >> ${i}.sh
            ;;
        21)
            echo 'echo "Enter the number of terms:"' >> ${i}.sh
            echo 'read n' >> ${i}.sh
            echo 'a=0' >> ${i}.sh
            echo 'b=1' >> ${i}.sh
            echo 'echo "Fibonacci Series:"' >> ${i}.sh
            echo 'for ((i=0; i<n; i++)); do' >> ${i}.sh
            echo '    echo -n "$a "' >> ${i}.sh
            echo '    fn=$((a + b))' >> ${i}.sh
            echo '    a=$b' >> ${i}.sh
            echo '    b=$fn' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        22)
            echo 'if [ $# -ne 2 ]; then' >> ${i}.sh
            echo '    echo "Usage: $0 <file1> <file2>"' >> ${i}.sh
            echo '    exit 1' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            echo 'if cmp -s "$1" "$2"; then' >> ${i}.sh
            echo '    echo "Files are the same. Deleting $2"' >> ${i}.sh
            echo '    rm $2' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "Files are different"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        23)
            echo 'PS3="Select option: "' >> ${i}.sh
            echo 'select opt in "List current directory" "Print working directory" "Display date" "Display users logged in" "Exit"; do' >> ${i}.sh
            echo '    case $opt in' >> ${i}.sh
            echo '        "List current directory")' >> ${i}.sh
            echo '            ls' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '        "Print working directory")' >> ${i}.sh
            echo '            pwd' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '        "Display date")' >> ${i}.sh
            echo '            date' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '        "Display users logged in")' >> ${i}.sh
            echo '            who' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '        "Exit")' >> ${i}.sh
            echo '            break' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '        *)' >> ${i}.sh
            echo '            echo "Invalid option"' >> ${i}.sh
            echo '            ;;' >> ${i}.sh
            echo '    esac' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        24)
            echo 'for file in *; do' >> ${i}.sh
            echo '    if [ -f $file ] && [ ! -x $file ]; then' >> ${i}.sh
            echo '        chmod +x $file' >> ${i}.sh
            echo '        echo "$file is made executable"' >> ${i}.sh
            echo '    fi' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        25)
            echo 'for i in 1 2 3; do' >> ${i}.sh
            echo '    for j in 1 2 3; do' >> ${i}.sh
            echo '        for k in 1 2 3; do' >> ${i}.sh
            echo '            echo "$i$j$k"' >> ${i}.sh
            echo '        done' >> ${i}.sh
            echo '    done' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        26)
            echo 'echo "Enter the number of terms:"' >> ${i}.sh
            echo 'read n' >> ${i}.sh
            echo 'echo "Number series:"' >> ${i}.sh
            echo 'for ((i=1; i<=n; i++)); do' >> ${i}.sh
            echo '    echo -n "$i "' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        27)
            echo 'echo "Enter the number of rows:"' >> ${i}.sh
            echo 'read rows' >> ${i}.sh
            echo 'for ((i=0; i<rows; i++)); do' >> ${i}.sh
            echo '    for ((j=0; j<=i; j++)); do' >> ${i}.sh
            echo '        if [ $j -eq 0 ] || [ $i -eq $j ]; then' >> ${i}.sh
            echo '            coef=1' >> ${i}.sh
            echo '        else' >> ${i}.sh
            echo '            num=$((i-j+1))' >> ${i}.sh
            echo '            den=$j' >> ${i}.sh
            echo '            coef=$((coef * num / den))' >> ${i}.sh
            echo '        fi' >> ${i}.sh
            echo '        echo -n "$coef "' >> ${i}.sh
            echo '    done' >> ${i}.sh
            echo '    echo' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        28)
            echo 'echo "Enter a decimal number:"' >> ${i}.sh
            echo 'read decimal' >> ${i}.sh
            echo 'echo "Binary conversion: $(echo "obase=2; $decimal" | bc)"' >> ${i}.sh
            ;;
        29)
            echo 'echo "Enter a string:"' >> ${i}.sh
            echo 'read str' >> ${i}.sh
            echo 'reverse=$(echo $str | rev)' >> ${i}.sh
            echo 'if [ "$str" = "$reverse" ]; then' >> ${i}.sh
            echo '    echo "$str is a palindrome"' >> ${i}.sh
            echo 'else' >> ${i}.sh
            echo '    echo "$str is not a palindrome"' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            ;;
        30)
            echo 'echo "Enter file name:"' >> ${i}.sh
            echo 'read filename' >> ${i}.sh
            echo 'awk '\''{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k, a[k]}'\'' $filename' >> ${i}.sh
            ;;
        31)
            echo 'echo "Enter directory path:"' >> ${i}.sh
            echo 'read dir' >> ${i}.sh
            echo 'grep -roh "Linux" $dir | wc -w' >> ${i}.sh
            ;;
        32)
            echo 'echo "Enter password:"' >> ${i}.sh
            echo 'read password' >> ${i}.sh
            echo 'if [[ ${#password} -lt 8 ]]; then' >> ${i}.sh
            echo '    echo "Password length should be at least 8 characters"' >> ${i}.sh
            echo '    exit 1' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            echo 'if ! [[ $password =~ [0-9] ]]; then' >> ${i}.sh
            echo '    echo "Password should contain at least one digit"' >> ${i}.sh
            echo '    exit 1' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            echo 'if ! [[ $password =~ [A-Z] ]]; then' >> ${i}.sh
            echo '    echo "Password should contain at least one uppercase letter"' >> ${i}.sh
            echo '    exit 1' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            echo 'if ! [[ $password =~ [a-z] ]]; then' >> ${i}.sh
            echo '    echo "Password should contain at least one lowercase letter"' >> ${i}.sh
            echo '    exit 1' >> ${i}.sh
            echo 'fi' >> ${i}.sh
            echo 'echo "Password is strong"' >> ${i}.sh
            ;;
        33)
            echo 'echo "Enter directory path:"' >> ${i}.sh
            echo 'read dir' >> ${i}.sh
            echo 'echo "Number of files and subdirectories: $(find $dir -type d -or -type f | wc -l)"' >> ${i}.sh
            ;;
        34)
            echo 'echo "Enter strings separated by space:"' >> ${i}.sh
            echo 'read -a strings' >> ${i}.sh
            echo 'for ((i=0; i<${#strings[@]}; i++)); do' >> ${i}.sh
            echo '    rev=$(echo ${strings[i]} | rev)' >> ${i}.sh
            echo '    reversed_strings[$i]=$rev' >> ${i}.sh
            echo 'done' >> ${i}.sh
            echo 'echo "Reversed list of strings:"' >> ${i}.sh
            echo 'for string in "${reversed_strings[@]}"; do' >> ${i}.sh
            echo '    echo "$(echo $string | rev)"' >> ${i}.sh
            echo 'done' >> ${i}.sh
            ;;
        esac

    chmod +x ${i}.sh
done
