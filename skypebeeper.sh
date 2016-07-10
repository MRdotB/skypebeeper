#!/bin/zsh

login () {
	echo $1 $2 | skype --pipelogin
}

beep () {
	echo 'beep';
	sleep 10 &&
	skype --callto $1
}

hang () {
	echo 'hang';
	sleep 25 &&
	kill `ps -s | grep skype | head -n 1 | cut -d ' ' -f 1,4 -s`
}

#login $1 $2 & sleep 10 && beep 'echo123' && hang
while read NUM; do
	login $1 $2 & beep $NUM && hang
done < $3
# argv 1 skypeLogin argv2 skypePass argv3 callfile 
#cat nous.txt | while read a;
# do (echo baptiste.chaleil lol | skype --pipelogin) & sleep 10 && echo 'call' && skype --callto $a && sleep 25 && kill `ps -s | grep skype | head -n 1 | cut -d ' ' -f 1,4 -s`; done;

##		cat output.txt | while read a; do echo $a; done;
