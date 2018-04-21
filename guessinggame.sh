function file_quantity {
	ls -l | egrep "^-r" | wc -l
}

fq=none

while [[ $fq -ne $(file_quantity) ]]
do
	echo "Please enter the number of files in the current directory: "
	read guess
	let fq=$guess

	if [[ $fq -gt $(file_quantity) ]]
	then
		echo -e "The number you have entered is too high.\nTry again!"
	elif [[ $fq -lt $(file_quantity) ]]
	then
		echo -e "The number you have entered is too low.\nTry again!"
	else
		echo "Congratulations, you have entered the right number!"
		echo "There is $fq files in this directory." 
	fi
done
