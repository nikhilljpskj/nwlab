read -p "Enter the number :" num
temp=$num
length=${#temp}
armstrong=0
while [ $temp -gt 0 ]
do
	digit=$(($temp %10))
	value=$(($digit **length))
	armstrong=$(($armstrong+$value))
	temp=$(($temp/10))
done
if [ $armstrong -eq $num ]
then
	echo "The number $num is a armstrong number"
else
	echo "The number $num is not a armstrong number"
fi


Algorithm

1. Input a number and store it in num.
2. Set temp = num
3. Calculate the length of num and store it in length.
4. Set armstrong = 0
5. While temp > 0:
   a. Get the last digit of temp and store it in digit.
   b. Calculate value = digit^length.
   c. Add value to armstrong.
   d. Update temp by removing its last digit.
6. If armstrong equals num, then:
   a. Print "The number num is an Armstrong number."
   b. Else:
   c. Print "The number num is not an Armstrong number."
