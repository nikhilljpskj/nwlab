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


Algorithm

1. Input starting number (start) and ending number (end) from the user.
2. Set count = 0 (to count prime numbers).
3. For num in range from start to end (inclusive):
   a. Set flag = 1 (assuming num is prime).
   b. For j in range from 2 to num - 1:
      i. If num is divisible by j (num % j == 0), set flag = 0 and break.
   c. If num is equal to 1, continue to the next iteration.
   d. If flag is still 1, increment count by 1 and print num as a prime number.
4. Print the count of prime numbers found in the range.
