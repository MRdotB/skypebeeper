#!/bin/zsh

login () {
	timeout 25s skype --pipelogin < lol
}

beep () {
	echo 'beep';
	sleep 5 &&
	skype --callto $1 &&
	sleep 27
}

while read NUM; do
	login & beep $NUM
done < $3
