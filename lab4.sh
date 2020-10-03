#! /bin/bash

<<'comment'
echo -e "Enter two numbers to be added using space: \c"
read num1 num2
echo -e "The sum of the two numbers is \c"
echo "$num1+$num2" | bc
comment

<<'comment'
echo -e "Enter two numbers to be added using space: \c"
read num1 num2
echo "Numbers before swapping num1=$num1, num2=$num2"
echo " "
temp=$num1
num1=$num2
num2=$temp
echo "Numbers in swapping......"
echo " "
echo "Numbers after swapping num1=$num1, num2=$num2"
comment

echo -e "The Product of the two numbers is: \c"
echo "scale=5;$1*$2" |  bc