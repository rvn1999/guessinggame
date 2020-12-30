#!/bin/sh
function cme { wcou=$(ls|wc-l) }
echo "HOW many files in this directory?"
cme;
read guess;while [guess != wcou]
do
	if [guess -gt wcou]
		echo "too high"
	else
		echo "too low"
	fi
	read guess;
done
echo "Congratulations !!"