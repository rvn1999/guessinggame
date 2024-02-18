#!/bin/bash

function congrats {
echo "Congratulations!!!!!"
}

while true
do
	count=$(ls | wc -l);
	echo "how many files are in the current directory?";
	read user_in;
	if [ $count -gt $user_in ]
	then
		echo "guess was too low"
	elif [ $count -lt $user_in ]
	then
		echo "guess was too high"
	else
		break
	fi
done

congrats;
