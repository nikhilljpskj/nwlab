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


Algorithm

1. Input a range and store it in finalNo.
2. Set firstNum = 0 and secondNum = 1.
3. If finalNo equals 0, then:
   a. Print firstNum.
4. Else, if finalNo equals 1, then:
   a. Print firstNum.
   b. Print secondNum.
5. Else:
   a. Print firstNum.
   b. Print secondNum.
   c. For i from 2 to finalNo - 1:
      i. Calculate thirdNum = firstNum + secondNum.
      ii. Print thirdNum.
      iii. Update firstNum = secondNum.
      iv. Update secondNum = thirdNum.
6. End the loop when i reaches finalNo - 1.
