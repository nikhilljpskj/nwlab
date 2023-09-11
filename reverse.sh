#!/bin/bash


echo "Enter a number: "
read number

reverse=0
while [ $number -gt 0 ]; do
  remainder=$(( $number % 10 ))
  reverse=$(( $reverse * 10 + $remainder ))
  number=$(( $number / 10 ))
done


echo "Reversed number: $reverse"


Algorithm

1. Prompt the user to enter a number and store it in number.
2. Initialize reverse to 0.
3. While number > 0:
   a. Calculate remainder = number % 10.
   b. Multiply reverse by 10 and add remainder to it.
   c. Update number by removing its last digit (integer division by 10).
4. The value in reverse is the reversed number.
5. Print the reversed number.
