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


Algorithm


1. Input the size of the list and store it in size.
2. Initialize an empty array called array.
3. Initialize sumEven and sumOdd to 0.
4. For i from 0 to size - 1:
   a. Input a number and store it in item.
   b. Append item to array.
5. For each number in array:
   a. If the number is even:
      - Add the number to sumEven.
   b. If the number is odd:
      - Add the number to sumOdd.
6. Print "Sum of even numbers in the list is sumEven."
7. Print "Sum of odd numbers in the list is sumOdd."


