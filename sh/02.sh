echo -n "Enter year : "
read n 
if ((n%4==0)) && ((n%100 != 0)) || ((n%400 == 0)) ; then 
    echo "$n is leap year"
else 
    echo "$n is not a leap year"
fi