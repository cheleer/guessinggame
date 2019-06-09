#!/usr/bin/env bash

echo "[Welcome to Rain's guessing game v1.0]"

function getResponse {
	echo "Guess how many files are in this directory:"
	read response
	echo "You entered: $response"
	files=$(ls -l | wc -l)
}

getResponse

while [[ $response -ne $files ]]
do
	if [[ $guess -lt $files ]]
	then
		echo "Too low. Try again."
	else
		echo "Too high. Try again."
	fi
	getResponse
done

echo "Good job! This is the correct answer. Here is the list of files:"
echo "---" && ls -l
