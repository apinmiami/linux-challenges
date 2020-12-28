#!/bin/bash

#----------------------
# Authors: Kylan Roberts, James Agyemang, Olivia Mitchem
# Date: 12/28/2020

# Description: The purpose of this scrript is to
#
#

#---------------------------
# Version: 1.2.3
#
# Special Instructions:

# Declared Variables:

#-----------------------------------------------------
# Script Body

# ------- Section 1 -------
echo "Hello.. "
# --------- Section 2 ------
D=`date`
echo "Today's date is $D."
#--------- Section 3 --------
Host=`hostname`
echo "Showing the current host......... $Host."
#---------- Section 4 ------------
echo "Here is some math!"
read -p "Please enter the first number >> " num1
read -p "Please enter a second number >> " num2
sum=$(( $num1 + $num2 ))
difference=$(( $num1 - $num2 ))
product=$(( $num1 * $num2 ))
dividend=$(( $num1 / $num2 ))
echo "The sum is $sum."
echo "The difference is $difference."
echo "The product is $product."
echo "Dividing the two numbers you get $dividend."

# -------------- Section 6 -------------
echo "Is 50 greater than 34?"
test 50 -gt 34 && echo "Yes" || "No"

# ----------- Section 5 & 7 ---------
read -p "Please enter another number. >> " number
if [ $number -lt 4 ]; then
echo "That is less than 4."
elif [ $number -gt 4 ]; then
echo "That number is greater than 4."
elif [ $number -eq 4 ]; then 
echo "This number is equal to 4!"
fi 
# ----------- Section 8 ------------
read -p "Please enter a username >> " username
read -p "Please enter a password >> " password
echo "Your username is $username."
echo "Your password is $password."

#------------ Section 9 -------------
echo "Using for loop."
for x in 1 2 3 4 5 
do
echo $x
done
sleep 2
#------------ Section 10 --------------------
echo "Using while loop."
counter=2
while [ $counter -le 20 ] 
do 
echo $counter
((counter+=2))
done
sleep 2
#-------------- Section 11 --------------
echo "Using until loop."
x=1 
until [ $x -gt 20 ]
do 
echo $x
((x+=2))
done

# -------------- Section 12 ------------
sleep 2
num3=10
num4=5
echo "Num3 is 10"
echo "Num4 is 5"
num5=$(($num3 / $num4))
num6=$(($num5 * 10 ))
num7=$(($num6 - 10 ))
echo "Num5 is $num5."
echo "Num6 is $num6."
echo "Num7 is $num7."
sleep 2
# -------------------- Section 13 ------------------
echo "Showing environment variables."
sleep 3
env
sleep 2
# ------------------- Section 14 ------------------
num8=4
num9=4
mult=$(( $num8 * $num9 ))
echo "Multiplication of 4 and 4 is $mult."
