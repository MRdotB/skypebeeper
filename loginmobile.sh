while read LOGIN
do
	ldapsearch uid=$LOGIN |
	if grep "dn" | grep "2016" &
		grep "mobile" | sed "s/[^0-9]*//g" | grep "^0" | sed "s/^0/+33/g" >> $2 
		then 
			(echo SUCCESS ; exit 1)
		else 
			(echo FAIL ; exit 0) fi
done < $1
