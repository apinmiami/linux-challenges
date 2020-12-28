#!/bin/bash

#---------------------
# Author: Daniel Caccavelli, Keaira Link, Jane Wang
# Date: 12/28/2020

# Description: The purpose of this script is to 
# complete Challenge 15.
#

#---------------------
# Script Body

# Section 1 - Printing text.
echo "This is the text I would like to print."

# Section 2 - Printing text using command substitution.
local_date=$(date +'%x %X')
echo $local_date

# Section 3 - Prints some env variables inside other strings.
echo "Your username is $USER. The shell you are working with is $SHELL."

#Section 4 - Print several mathematical operators.

read -p "Enter a number: " first
read -p "Enter another number: " second
#or use this: sum = $(( first + second ))
sum=`expr $first + $second`
#or use this: diff = $(( first - second ))
diff=`expr $first - $second`
mult=$(( $first * $second ))
# doesn't work: mult=$(expr first * second)
div=$(echo "scale=2; $first / $second" | bc)
# doesn't work: div=$(first / second)
echo "The sum is $sum."
echo "The difference is $diff."
echo "The product is $mult."
echo "The quotient is $div."

# Section 5 - Create if/else statement, check if something is true, then do a different command based on the result.

read -p "Enter a number: " number
if (("$number" > 10)); then
echo "Your number is greater than 10."
else
echo "Your number is not greater than 10."
fi 

# Section 6 - Test something using the test command.

read -p "Enter another number: " number
test $number -lt 100 && echo "Your number is less than 100." || echo "Your number is greater than 100."

# Section 7 - Use if statements to compare with -eq, -ne, -gt, -lt, -le

read -p "Enter another number: " number
if [ "$number" -eq 15 ]; then
echo "Your number is equal to 15."
fi

if [ "$number" -ne 15 ]; then
echo "Your number is not equal to 15."
fi

if [ "$number" -gt 15 ]; then
echo "Your number is greater than 15."
fi

if [ "$number" -lt 15 ]; then
echo "Your number is less than 15."
fi

if [ "$number" -le 15 ]; then
echo "Your number is less than or equal to 15."
fi

# Section 8 - Using the read command, prompt user, compare strings, check credentials

curr_password="Password123"
read -p "Please enter your password: " password
if [ "$password" == "$curr_password" ]; then
echo "Password correct."
fi

# Section 9 - Using for loop, print 0-5

for x in $(seq 0 5); do
echo "$(( $x + 1 )).$x"
done

# Section 10 - Using while loop, print all even numbers from 1 to 20.

number=1
while [ $number -le 20 ]; do
if [ "$(( $number % 2 ))" -eq 0 ]; then
echo "$number is even."
fi
((number++))
done

# Section 11 - Using until loop, print all odd numbers from 1 to 20.

number=1
until [ $number -gt 20 ]; do
if [ "$(( $number % 2 ))" -eq 1 ]; then
echo "$number is odd."
fi
((number++))
done

# Section 12 - Create function that divides two numbers and multiplies the result
# by 10, then subtract 10 and print the result. Call the funciton by passing two numbers

domath()
{
div=$(( $1 / $2 ))
sub=$(( $div - 10 ))
echo $sub
}
domath 100 20

# Section 13 - Create function that prints env variables, today's day, and
# finds the remainder of the division of 10 and 3

dostuff()
{
printenv
date
echo $(( 10 % 3 ))
}
dostuff

# Section 14 - Create function that returns the product of 4 and 34.

multfunc()
{
echo $(( 34 * 4 ))
}
multfunc
