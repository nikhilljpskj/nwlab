read -p "Enter the starting number : " start
read -p "Enter the ending number : " end
count=0
for num in $(seq $start $end)
do
	flag=1
	for j in $(seq 2 $(($num-1)))
	do
		if (($num%j==0))
		then
			flag=0
			break
		fi
	done
	if [ $num -eq 1 ]
	then
		continue
	elif [ $flag -eq 1 ]
	then
		count=$(($count+1))
		echo $num
	fi
done
echo "The count of prime numbers between $start and $end is : $count"