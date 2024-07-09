<h1 align="center">Networking Lab</h1> 

### 1) number is even or odd

```shell
read -p "Enter a number : " num
if ((num % 2 == 0)); then
    echo "$num is even"
else
    echo "$num is odd"
fi
```
##

### 2) leap year or not

```shell
read -p "Enter an year : " year
if ((year%4 == 0)) && ((year%100 != 0)) || ((year%400 == 0)); then 
    echo "$year is leap year"
else
    echo "$year is not leap year"
fi
```
##

### 3) area and perimeter

```shell
read -p "Enter the radius of the circle : " r
echo "area is : $(echo "3.14*$r*$r" | bc)"
echo "perimater is : $(echo "2*3.14*$r" | bc)"
```
##

### 4) number and it's reverse are same or not

```shell
read -p "Enter a number : " num
if [[ $num -eq $(echo $num | rev) ]]; then 
    echo "$num and its reverse are the same"
else 
    echo "$num and its reverse are not the same"
fi
```
##

### 5) string is palindrome or not

```shell
read -p "Enter a string : " str
if [[ "$str" = $(echo "$str" | rev) ]]; then 
    echo "$str is palindrome"
else 
    echo "$str is not palindrome"
fi
```
##

### 6) sum of odd numbers and even numbers from a collection of numbers

```shell
read -p "Enter numbers separated by spaces : " -a nums
even_sum=0
odd_sum=0
for num in ${nums[@]}; do
    if ((num%2 == 0)); then
        even_sum=$((even_sum+num))
    else
        odd_sum=$((odd_sum+num))
    fi
done
echo "Even sum is : $even_sum"
echo "Odd sum is : $odd_sum"
```
##

### 7) quadratic equation

```shell
coming...
```
##

### 8) armstrong or not

```shell
read -p "Enter a number : " num
sum=0
for ((i=0; i<${#num}; i++)); do
    sum=$(echo "${num:$i:1} ^ ${#num} + $sum " | bc)
done
if ((num == sum)); then 
    echo "$num is armstrong"
else
    echo "$num is not armstrong"
fi
```
##

### 9) prime or not

```shell
read -p "Enter a number : " num
flag=false
if ((num < 2)); then flag=true; fi
for ((i=2; i<=num/2; i++)); do
    if ((num%i == 0)); then 
        flag=true
        break
    fi
done
if $flag; then
    echo "$num is not prime"
else
    echo "$num is prime"
fi
```
##

### 10) prime numbers b/w 1 and 50

```shell
for ((i=2; i<=50; i++)); do
    flag=false
    for ((j=2; j<=i/2; j++)); do
        if ((i%j == 0)); then
            flag=true
            break;
        fi
    done
    if ! $flag; then 
        echo -n "$i "
    fi
done
```
## 

### 11) sum of squares of digits in a number 

```shell
read -p "Enter a number : " num
sum=0
for digit in $(echo $num | fold -w1); do
    sum=$((sum+digit**2))
done
echo "Sum of squares of digit : $sum"
```
##

### 12) number of vowels in a string

```shell
read -p "Enter a string : " str
echo "Number of vowels in the string is : $(echo "$str" | grep -o -i [aeiou] | wc -l)"
```
##

### 13) student grade

```shell
function get_grade() {
    local grade="unknown"
    local mark=$1
    if (( mark < 50 )); then
        grade="F"
    elif (( mark < 60 )); then
        grade="E"
    elif (( mark < 70 )); then
        grade="D"
    elif (( mark < 80 )); then
        grade="C"
    elif (( mark < 90 )); then
        grade="B"
    elif (( mark <= 100 )); then
        grade="A"
    else
        grade="invalid"
    fi

    echo $grade
}
read -p "Enter the name of the student : " name
read -p "Enter the mark of the student (in 100) : " mark

echo -e "\nName of the student : $name"
echo "Mark of the student : $mark"
echo "Grade of the student : $(get_grade $mark)"
```
##

### 14) largest and smallest in a list

```shell
read -p "Enter numbers separated by spaces : " -a nums
small=${nums[0]}
large=${nums[0]}
for num in ${nums[@]}; do
    if ((num < small)); then 
        small=$num
    fi
    if ((large < num)); then
        large=$num
    fi
done
echo "Smallest number is : $small"
echo "Largest number is : $large"
```
##

### 15) smallest digit in a number

```shell
read -p "Enter a number : " num
echo "Smallest digit is $(echo $num | grep -o [0-9] | sort | head -n1)"
```
##

### 16) sum of numbers divisible by 3 and not 5 b/w 50 and 100

```shell
sum=0
for ((i=50; i<=100; i++)); do
    if ((i%3 == 0)) && ((i%5 != 0)); then   
        sum=$((sum+i))
    fi
done
echo "Sum is : $sum"
```
##

### 17) second largest number

```shell
read -p "Enter numbers separated by spaces : " -a nums
IFS=$'\n'
sorted=($(sort -nr <<< "${nums[*]}"))
echo "Second largest number is : ${sorted[1]}"
```
##

### 18) sum of digits

```shell
read -p "Enter a number : " num
sum=0
for digit in $(echo $num | fold -w1); do
    sum=$((sum+digit))
done
echo "Sum is : $sum"
```
##

### 19) reverse of a number

```shell
read -p "Enter a number : " num
echo "Reverse of $num is : $(echo $num | rev)"
```
##

### 20) factorial

```shell
read -p "Enter a number : " num
fact=1
for ((i=1; i<=num; i++)); do
    fact=$((fact * i))
done
echo "Factorial of $num is : $fact"
```
##

### 21) fibonacci series

```shell
read -p "Enter the number of terms : " terms
a=0
b=1
for ((i=1; i<=terms; i++)); do 
    echo -n "$a "
    c=$((a+b))
    a=$b
    b=$c
done
```
##

### 22) remove duplicate file

```shell
if [[ $# -ne 2 ]]; then
    echo "usage: $0 <file1> <file2>"
fi

if cmp -s $1 $2; then 
    echo "Files are same, removing $2"
    rm $2
else
    echo "Files are different"
fi
```
##

### 23) Linux commands with case 

```shell
PS3="select option : "
select opt in "list current dir" "print working dir" "date" "user logged in" "exit"; do
    case $opt in
        "list current dir")
            ls
            ;;
        "print working dir")
            pwd
            ;;
        "date")
            date
            ;;
        "user logged in")
            who
            ;;
        "exit")
            exit 0
            ;;
        *)
            echo "invalid option"
            ;;
    esac
done
```
##

### 24) giving executable permission

```shell
for file in *; do 
    if [[ -f $file && ! -x $file ]]; then
        echo "$file made executable"
        chmod u+x $file
    fi
done
```
##

### 25) number combination

```shell
for i in 1 2 3; do 
    for j in 1 2 3; do 
        for k in 1 2 3; do
            echo "$i$j$k"
        done
    done
done
```
##

### 26) number series 

```shell
read -p "Enter the number of terms : " terms
for ((i=1; i<=terms; i++)); do
    echo "$i"
done
```
##

### 27) title

```shell
coming...
```
##

### 28) binary conversion

```shell
read -p "Enter a number : " num
echo "decimal of $num is : $(echo "obase=2; $num" | bc)"
```
##

### 29) palindrome

```shell
read -p "Enter a string : " str
if [[ $str = $(echo $str | rev) ]]; then
    echo "$str is palindrome"  
else
    echo "$str is not palindrome"  
fi
```
##

### 30) 

```shell
coming...
```
##

### 31) title

```shell
coming...
```
##

### 32) title

```shell
coming...
```
##

### 33) title

```shell
coming...
```
##

### 34) title

```shell
coming...
```
##


