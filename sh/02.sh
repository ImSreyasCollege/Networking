echo -n "Enter year : "
read n 
if [ $(echo "$n%4" | bc) == 0 ] && [ $((n%100)) -ne 0 ] || [ $((n%400)) -eq 0 ] ; then 
    echo "$n is leap year"
else 
    echo "$n is not a leap year"
fi
declare -p n