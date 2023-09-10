read -p "Enter the range : " finalNo

firstNum=0
secondNum=1

	if [ $finalNo -eq 0 ]
	then
		echo $firstNum
	elif [ $finalNo -eq 1 ]
	then
		echo $firstNum
		echo $secondNum
	else
		echo $firstNum
		echo $secondNum
		for (( i=2; i<finalNo; i++))
		do
		thirdNum=$(expr $firstNum + $secondNum)
		echo $thirdNum
		firstNum=$secondNum
		secondNum=$thirdNum
	done
fi