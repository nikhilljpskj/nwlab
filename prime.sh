read -p "Enter the number : " num
count=0
for ((i=1;i<=$num;i++))
do
	if [ $num -eq 1 ]
	then
		#echo "$num is a not prime number"
		break
	fi
	if (($num%$i==0))
	then
		count=$(($count+1))
	fi
done
if [ $count -eq 2 ]
then
	echo "$num is a prime number"
else
	echo "$num is a not prime number"
fi


Algorithm

1. Input a number and store it in num.
2. Set count = 0
3. For i from 1 to num:
   a. If num equals 1:
      - Break out of the loop (not a prime number).
   b. If num is divisible by i (num % i equals 0):
      - Increment count.
4. If count equals 2:
   - Print "num is a prime number."
   - Else:
   - Print "num is not a prime number."
