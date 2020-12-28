#!/bin/bash

#---------------------------------------
# Author: Joven Poblete | Mtaghi Guidane | Jeff Kohler | Yordanos Gindo
# Date: 12/28/2020

# Description: This script is for Challenge 15
#
#

#---------------------------------------
# Version: 1.0.0
#
# Special Instructions:

# Declared Variables:

#---------------------------------------
# Section 1
echo Hello World

# Section 2
echo "The time is now `date +%r`"

# Section 3
echo "The path to this file: `$PWD`"

# Section 4
echo 5 + 5 = $((5+5))
echo 5 - 5 = $((5-5))
echo '5 * 5 = '$((5*5))
echo 5 / 5 = $((5/5))

# Section 5
lines=15
if (("$lines" <= 10))
then
	echo The \$lines variable is equal to or less than 10
else
	echo The \$lines variable is greater than 10
fi

# section 6
test 50 -lt 100 && echo "Yes" || echo "No"

# Section 7
a=4
b=5

if [ "$a" -eq "$b" ] # equal
then
	echo $a is equal to $b
else
	echo $a is NOT equal to $b
fi

if [ "$a" -ne "$b" ] # not equal
then
        echo $a is NOT equal to $b
else
        echo $a is equal to $b
fi

if [ "$a" -gt "$b" ] # greater than
then
        echo $a is greater than $b
else
        echo $a is NOT greater than $b
fi

if [ "$a" -lt "$b" ] # less than
then
        echo $a is less than $b 
else
        echo $a is NOT less than $b
fi

if [ "$a" -le "$b" ] # less than or equal to
then
        echo $a is less than or equal to $b 
else
        echo $a is NOT less than or equal to $b
fi


# Section 8 
read -p 'Enter username: ' usr
if [ "$usr" == `whoami` ]
then
	echo "That is correct"
fi

# Section 9
lineNum=1
for x in 0 1 2 3 4 5
do
	echo $lineNum\) $x
	lineNum=$(( lineNum + 1))
done

# Section 10
even=1
while [ "$even" -le 20 ]
do
	if [ $(("$even" % 2)) -eq 0 ]
	then
		echo $even
	fi
((even++))
done

# Section 11
oddCounter=1
until [ "$oddCounter" -gt 20 ]
do
	if [ $(("$oddCounter" % 2)) -eq 1 ]
	then
		echo $oddCounter
	fi
((oddCounter++))
done

# Section 12
function randomMath
{
	x=$(( $(( $1 / $2)) * 10 - 10 ))
	echo $x
}
randomMath 10 2

# Section 13
function printEnv
{
	echo `pwd`
	echo `whoami`
	echo `date +%A`
	remainder=$(( 10 % 3 ))
	echo $remainder
}
printEnv

#section 14
function multiply()
{
	result=$((4*34))
}
multiply
echo $result
