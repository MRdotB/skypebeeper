#!/bin/zsh

login () {
	timeout 25s skype --pipelogin < log
}

beep () {
	echo 'beep';
	sleep 5 &&
	skype --callto $1 &&
	sleep 27
}

echo $1 $2 > log;
while read NUM; do
	login & beep $NUM
done < $3
rm log
