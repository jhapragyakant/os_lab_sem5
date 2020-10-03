#! /bin/bash

<<'comment'
1.
echo -e "Enter two numbers to be added using space: \c"
read num1 num2
echo -e "The sum of the two numbers is \c"
echo "$num1+$num2" | bc
comment

<<'comment'
2.
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

<<'comment'
3.
echo -e "The Product of the two numbers is: \c"
echo "scale=5;$1*$2" |  bc
comment

<<'comment'
4.
if [ $1 -gt $2 -a $1 -gt $3 ]
then 
    echo "$1 is the greatest among the three."
elif [ $2 -gt $1 -a $2 -gt $3 ]
then
    echo "$2 is the greatest among the three."
else
    echo "$3 is the greatest among the three."
fi
comment

<<'comment'
5.
echo "This system will calculate the Grade according to marks:->"
echo -e "Enter the marks obtained by the student in a subject: \c"
read num

if [ $num -le 100 -a $num -ge 90 ]
then 
    echo "Grade A"
elif [ $num -le 89 -a $num -ge 70 ]
then 
    echo "Grade B"
elif [ $num -le 69 -a $num -ge 40 ]
then 
    echo "Grade C"
else 
    echo "The student is fail with Grade F."
fi
comment