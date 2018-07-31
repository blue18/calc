#!/bin/bash
# Author: B.G. 

add() {
    echo "enter number"
    read NUM_1
    echo "enter another number"
    read NUM_2
    TOTAL=`expr $NUM_1 + $NUM_2` # the "=" symbol has to be close to the variable
    echo "total is $TOTAL"
}
sub() {
    echo "enter number"
    read NUM_1
    echo "enter another number"
    read NUM_2
    TOTAL=`expr $NUM_1 - $NUM_2`
    echo "total is $TOTAL" 
}
mul() {
    echo "enter number"
    read NUM_1
    echo "enter another number"
    read NUM_2
    TOTAL=`expr $NUM_1 \* $NUM_2`
    echo "total is $TOTAL" 
}
div() {
    echo "enter number"
    read NUM_1
    echo "enter another number"
    read NUM_2
    TOTAL=`expr $NUM_1 / $NUM_2`
    echo "total is $TOTAL" 
}
fib() {
    if [ $1 -ge 10 ]; 
    then 
	echo "number is greater than 10"
    else
	echo "number is less than 10"
    fi 
}


echo "Hello friend"
echo "What is your username?"
read NAME

echo "What is your password:"
read IDNUMBER
echo "Your name is $NAME"
echo "Your number is $IDNUMBER"

echo "1.add"
echo "2.sub"
echo "3.mul"
echo "4.div"
echo "0.exit"

read CHOICE
case $CHOICE in 
1)
    echo "adding"
    add
    ;;
2)
    echo "subing"
    sub
    ;;
3)
    echo "muling"
    mul
    ;;
4)
    echo "diving"
    div
    ;;
0)
    echo "goodbye."
    ;;
*)
    echo "invalid input" 
    ;;
esac


