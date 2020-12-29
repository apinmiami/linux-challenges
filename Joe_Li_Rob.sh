
#!/bin/bash

#--------------------------------------------------------------------------------------
# Author: Rob, Joe, Li
# Date: 12/28/20

# Description: The purpose of this script is to incorporate the concepts in Lesson 15

#--------------------------------------------------------------------------------------
# Version: 1.0.0
#
#-------------------------------------------------------------------------------------
# Section 1: Printing text

echo "Hello World!"

#-------------------------------------------------------------------------------------
# Section 2: Printing text with command substitution
 
echo "Today is `date`"

#-------------------------------------------------------------------------------------
# Section 3: env variables inside strings

echo "The current user is: $USERNAME"

#-------------------------------------------------------------------------------------
# Section 4: Mathematical operations

num1=1;num2=2
sum=$(($num1+$num2))
echo "How about some math: $num1 + $num2 is $sum"

#-------------------------------------------------------------------------------------
# Section 5: if/else statements

echo "What's your age?"
read age
if (($age > 20))
then
echo "Lets grab a drink!"
else
echo "lets get some pizza!"
fi

#-------------------------------------------------------------------------------------
# Section 6: Using the test command

test $age -lt 21  && echo "under age" || echo "party on!"

#-------------------------------------------------------------------------------------
# Section 7: Using if statements with -eq, -ne, -gt, -lt, -le

if [ $age -eq 20 ]; then
echo "You're a young adult"
fi

if [ $age -lt 13 ]; then
echo "You're a child"
fi

if [ $age -ne 1 ]; then
echo "You are not a infant"
fi

if [ $age -gt 19 ]; then
echo "You're not a teenager anymore"
fi

if [ $age -le 20 ]; then
echo "You are not quite an adult yet"
fi


#-------------------------------------------------------------------------------------
# Section 8: Using the read command

read -p "Please enter your user name: " user
read -p "Create your password: " password
read -p "Re-enter your password: " verify
if [ "$password" != "$verify" ]
then
echo "Does not match"
else
echo "Verified"
fi

# Section 9: For loop

line=1
for id in $(seq 0 5)
do
echo "$line. $id"
((line++))
done

#-------------------------------------------------------------------------------------
# Section 10: While loop

num=1
while [ $num -le 20 ]
do
isEven=$(($num % 2))
if [ $isEven -eq 0 ]
then
echo "Printing even numbers from 1-20: $num"
fi
((num++))
done


#-------------------------------------------------------------------------------------
# Section 11: Until loop

num=1
until [ $num -eq 21 ]
do
isOdd=$(($num % 2))
if [ $isOdd -ne 0 ]
then
echo "Printing odd numbers from 1-20: $num"
fi
((num++))
done

#-------------------------------------------------------------------------------------
# Section 12: Functions

function letsMath {
result=$(($1 / $2))
echo "$1 divided by $2 is: $result"
result2=$((result * 10))
echo "$result multiplied by 10 is: $result2"
result3=$((result2 - 10))
echo "Subracting 10 from $result2 gives: $result3"
}
letsMath 10 2


#-------------------------------------------------------------------------------------
# Section 13: Functions with env variables

function userInfo {
echo "Current user is: $USER"
echo "Home directory is: $HOME"
echo "Today's date is: `date`"
remainder=$((4 % 32))
echo "The remainder of 4 by 34 is: $remainder"
}
userInfo

#-------------------------------------------------------------------------------------
# Section 14: Function with multiplication

function multiply {
result=$((4 * 34))
echo "Multiplying 4 by 34 gives: $result"
}
multiply

# ------------------------------------------------------------------------------------
