read -p "Enter the number : " num
factor=1
if [ $num -lt 0 ]; then
echo "not defined"
exit 1
fi
for((i=1;i<=num;i++))
do
	factor=$(($factor*$i))
done
echo "Factorial of $num is $factor"

Algorithm

1. Input a number and store it in num.
2. Set factor = 1
3. If num is less than 0, then:
   a. Print "not defined"
   b. Exit with a status code of 1
4. For i from 1 to num (inclusive), do:
   a. Set factor = factor * i
5. Print Factorial 