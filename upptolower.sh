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