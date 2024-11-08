#!/bin/bash
read num1 cal num2
if [ $cal == '+' ]
then
	num3=`expr $num1 + $num2`
else
	num3=`expr $num1 - $num2`
fi
echo $num3
exit 0
