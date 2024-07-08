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
