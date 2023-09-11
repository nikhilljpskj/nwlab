read -p "Enter the year : " year

if (($year%4==0))
then
	if (($year%400==0 || $year%100!=0))
	then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
	else
	echo "$year is not a leap year"
fi 


Algorithm

1. Input a year and store it in year.
2. If year is divisible by 4, then:
   a. If year is divisible by 400 or not divisible by 100, then:
      - Print "year is a leap year."
   b. Else:
      - Print "year is not a leap year."
3. Else:
   - Print "year is not a leap year."
