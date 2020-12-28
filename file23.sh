#!/bin/bash

read -p "Linux"

echo "Hello, $USER!"
echo "Today's date is : `date`"

read -p "Enter number 1 >> " num1
read -p "Enter number 2 >> " num2

sum=$(( $num1 + $num2 ))
echo "The sum of $num1 and $num2 is $sum"

sub=$(( $num1 - $num2 ))
echo "The difference of $num1 and $num2 is $sub"

mul=$(( $num1 * $num2 ))
echo "$num1 multiplied by $num2 is $mul"

div=$(( $num1 / $num2 ))
echo "$num1 divided by $num2 is $div"

if [ $sum1 -lt 5 -]; then
echo " Your number is less than 5"
else
echo "Your number is larger than 5"
fi

test $num1 -lt  $num2 && echo "Number 1 is less than number 2" || echo "Number 1 is not ess than number 2"

if [ $num1 -eq 5 ]; then
echo " Your number was equal to 5"
else
echo "Your number was not equal to 5"
fi

if [ $num1 -ne 5 ]; then
echo " Your number was not equal to 5"
else
echo "Your number is 5"
fi

if [ $num1 -gt 5 ]; then
echo " Your number was greater than 5"
else
echo "Your number was not greater than 5"
fi


if [ $num1 -lt 5 ]; then
echo " Your number was less than 5"
else
echo "Your number was not less than 5"
fi

if [ $num1 -le 5 ]; then
echo " Your number was less than or equal to 5"
else
echo "Your number was not less than or equal to 5"
fi

sleep 5

clear
read -p "What is your name? >> " name
read -sp "What is your password? >> " passwd

counter 1
for number in 0 1 2 3 4 5
do
echo "$counter $number"
((counter++))
done

#Section 9

#Section 10

#Section 11

for user in A B C;
do sudo useradd $user;
done

clear

read-p "What is your name? >>" name
read-sp "What is your password? >> " password

echo ""

if [[ $passwod == * && $name == A ]]; then
echo "Great, you are already added as a user."
elif [[ $password == * && $name == B ]]; then
echo "Great, you are already added as a user."
elif [[ $password == * && $name == C  ]]; then
echo "Great, you are already added as a user."
else
echo "Please contact your system administrator to be added as a user."
fi
