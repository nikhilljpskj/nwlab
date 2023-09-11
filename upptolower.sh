read -p "Enter the file name : " fileName

if [ ! -f $fileName ];
	then echo "File not found"
	exit 1
fi

echo "Converting from lower case to uppercase "

tr '[ a-z ]' '[ A-Z ]' <$fileName
echo
echo "Converting from Uppercase to lowercase  "

tr '[ A-Z ]' '[ a-z ]' <$fileName
echo
echo "The number of line is : " $(wc --lines< $fileName)

echo "The number of words is :" $(wc --words < $fileName)

echo "The number of character is :$char" $(wc --char <$fileName)

for i in $(cat $fileName)
do
	echo $i >>"Temp"
done

echo "The file sorted in desending order"

echo "$(sort -r "Temp")"
rm Temp


Algorithm

1. Input a file name and store it in fileName.
2. If the file with the name fileName does not exist, then:
   a. Print "File not found."
   b. Exit the script with an error code.
3. If the file exists, then:
   a. Print "Converting from lower case to uppercase."
   b. Convert the file content from lowercase to uppercase using tr and display it.
   c. Print an empty line for separation.
   d. Print "Converting from Uppercase to lowercase."
   e. Convert the file content from uppercase to lowercase using tr and display it.
   f. Print an empty line for separation.
   g. Print "The number of lines is:" followed by the line count of the file using wc.
   h. Print "The number of words is:" followed by the word count of the file using wc.
   i. Calculate the number of characters in the file using wc and store it in char.
   j. Print "The number of characters is:" followed by the value of char.
4. Create a temporary file named "Temp."
5. Iterate through each word in the original file:
   a. Append each word to the "Temp" file.
6. Print "The file sorted in descending order."
   a. Sort the "Temp" file in reverse order using sort and display the result.
7. Remove the "Temp" file.
