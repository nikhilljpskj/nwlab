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