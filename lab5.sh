#! /bin/bash

<<'comment'
fact=1
echo -e "Enter a no to calculate factorial: \c"
read n

while [ $n -ne 0 ]
do 
    fact=$(( $fact*$n ))
    (( n-- ))
done
echo $fact
comment

<<'comment'
echo "1.Display current Directory"
echo "2.Even or odd checker"
echo "3.No of files in Current Directory"
echo "4.Long listing of files"
echo " "
echo -e "Enter your choice:\c"
read n

case $n in
    "1" )
        pwd
        ;;
    "2" )
        echo -e "Enter a number:\c"
        read num
        if (( $num%2==0 ))
        then
            echo "Even No."
        else
            echo "Odd No."
        fi
        ;;
    "3" )
        echo -e "Total no of files:\c"
        ls -1 | wc -l
        ;;
    "4" )
        ls -l
        ;;
    "*" )
        echo "Invalid Choice"
        exit 1
        ;;
esac
comment

<<'comment'
echo "----------->2"
i=3
j=100
flag=0
tem=2

while [ $i -ne $j ]
    do
        temp=`echo $i`

        while [ $temp -ne $tem ]
        do
                temp=`expr $temp - 1`
                n=`expr $i % $temp`

                if [ $n -eq 0 -a $flag -eq 0 ]
                then
                        flag=1
                fi
        done

        if [ $flag -eq 0 ]
        then
                echo "----------->$i"
        else
                flag=0
        fi
        i=`expr $i + 1`
done
comment

<<'comment'
while [ 1 ]
do
    echo -e "Enter a character: \c"
    read ch
    case $ch in
        "a" ) 
            echo "It is a vowel.";;
        "e" ) 
            echo "It is a vowel.";;    
        "i" ) 
            echo "It is a vowel.";;
        "o" ) 
            echo "It is a vowel.";;
        "u" ) 
            echo "It is a vowel.";;
        "A" ) 
            echo "It is a vowel.";;
        "E" ) 
            echo "It is a vowel.";;    
        "I" ) 
            echo "It is a vowel.";;
        "O" ) 
            echo "It is a vowel.";;
        "U" ) 
            echo "It is a vowel.";;
        * ) 
            echo "It is not a vowel.";;
esac
done
comment
