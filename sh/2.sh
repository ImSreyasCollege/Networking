echo -n "Enter year : "
read n
if [ `expr $n % 4` -eq 0 ] && [ `expr $n % 100` -ne 0 ] || [ `expr $n % 400` -eq 0 ]; then 
    echo "$n is leap year"
else 
    echo "$n is not a leap year"
fi