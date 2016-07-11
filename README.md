# Skype Beeper

How to use ?

You need linux !

Then ./skypebeeper.sh skypelogin skypepassword number.txt

number.txt has to be formatted like this
```
+33676875262
+33672827372
```
Enjoy !

# Login number

For those who use ldap

For each login in your input file

loginfile.txt has to bo formatted like this
```
login1
login2
```

We assume that all numbers in ldap
are beginning with a '0' and are 10 digits long

```
For example :

0612345678
07-12-34-56-78
mobile_phone = 03,12,34,56,78

will be treated
```

This script will write in file
all numbers formated for skypebeeper

Be aware that numbers will be formatted as french mobile numbers
Hence they will be prefixed by +33
You may want to replace by your country prefix

If this is the case,
Just update the +33 in sed call in line 5

Use ./loginmobile.sh loginfile.txt outputfile.txt
