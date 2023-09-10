read -p "Enter the size of the list for odd and even number : " size
array=()
sumEven=0
sumOdd=0
for ((i=0;i<size;i++))
do
	read -p "Enter the $i index :" item
	array+=($item)
done
for number in "${array[@]}"
do
    if (($number%2==0))
	then
	sumEven=$(($sumEven+$number))
	else
	sumOdd=$(($sumOdd+$number)) 
	fi
done
echo "Sum of even numbers in the list is $sumEven"
echo "Sum of odd numbers in the list is $sumOdd"