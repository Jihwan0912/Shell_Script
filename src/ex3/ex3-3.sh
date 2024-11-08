#!/bin/bash
read kg cm
m=$(echo "scale=2; $cm / 100" | bc)
bmi=$(echo "scale=2; $kg / ($m * $m)" | bc)

if (( $(echo "$bmi < 18.5" | bc -l) ));
then
	echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) ));
then
	echo "정상체중입니다."
else
	echo "과체중입니다."
fi
exit 0
