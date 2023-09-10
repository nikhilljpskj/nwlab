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