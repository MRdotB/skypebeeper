## argv 1 skypeLogin argv2 skypePass argv3 callfile 
cat nous.txt | while read a;
 do (echo baptiste.chaleil lol | skype --pipelogin) & sleep 10 && echo 'call' && skype --callto $a && sleep 25 && kill `ps -s | grep skype | head -n 1 | cut -d ' ' -f 1,4 -s`; done;

##		cat output.txt | while read a; do echo $a; done;
