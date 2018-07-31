#!/bin/sh
# August 15, 2016
# function
cal() {

    echo "What would you like to do?"
    echo "1.ADD +"
    echo "2.SUB -"
    echo "3.MUL *"
    echo "4.DIV /"
    echo "5.Binary"
    read RES

    case "$RES" in 

    1) 
        echo "Enter a number"
        read NUM_1
        echo "Enter another number"
        read NUM_2  
        echo "Total: `expr $NUM_1 + $NUM_2`" 
	;;
    2) 
        echo "Enter a number"
        read NUM_1
        echo "Enter another number"
        read NUM_2  
        echo "Total: `expr $NUM_1 - $NUM_2`"
	;;
    3)  
        echo "Enter a number"
        read NUM_1
        echo "Enter another number"
        read NUM_2  
        echo "Total: `expr $(($NUM_1 * $NUM_2))`" # use the following syntax for mul
	;;
    4)  
        echo "Enter a number"
        read NUM_1
        echo "Enter another number"
        read NUM_2  
        echo "Total: `expr $NUM_1 / $NUM_2`"
	;;
    5)
        printf "Enter number: "
        read NUM
        binary $NUM
        ;;
    *)
	;;
    esac
}
binary() {
    DIV=$1
    index=0
    i=0
    printf "Binary: "
    while [ "$DIV" != 0 ]; do
	    TEMP=`expr $DIV % 2`
	    LIST[index]=$TEMP
        DIV=`expr $DIV / 2`
	index=`expr $index + 1`
    done
    # Since the binary number is in reverse order, we arrange it with the following:
    i=$index
    while [ "$i" != -1 ]; do
        printf "${LIST[i]}"
        i=`expr $i - 1`
    done 
    echo " "
}

echo "Welcome to calculator"
echo "What is your name?"
read NAME
echo "Hello, $NAME"
echo "Would you like to use the calculator?"
read RESPONSE

while [ $RESPONSE == "yes" ]; do

if [ $RESPONSE == "yes" ]; 
    then 
       cal
    else 
	echo "No"
    fi
echo "Would you like to use the calculator?"
read RESPONSE

done
echo "Bye $NAME!"
