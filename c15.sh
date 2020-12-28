
#!/bin/bash

#-----------------------------
# Author: Evan Coveney
# Date: 12/28/2020

# Section 1 - The purpose of this script is to print text.

echo "Hello, how are you?"

# Section 2 - The purpose of this script is to utilize command substitution.

echo "Today's date is `date`"

# Section 3 - The purpose of this script is print some Environmental Variables in
# a string.

echo "The Present Working Directory is $PWD. The Shell is $SHELL."

# Section 4 - The purpose of this script is to utilize and print the results
# of mathematical equations.

sum=$((2+3))
echo "The sum 2 plus 3 is $sum."
sub=$((3-2))
echo "3 minus 2 is $sub."
mul=$((3*2))
echo "3 times 2 is $mul."
div=$((10/2))
echo "10 divided by 2 is $div."

# Section 5 - The purpose of this script is to utilize an if-then-else
# statement.

echo -n "Enter a number:"
read VAR

if [[ $VAR -lt 7 ]]
then
echo "The sum is less than 7."
else
echo "The sum is not less than 7."
fi

# Section 6 - The purpose of this script is to utilize the test command.
echo -n "Enter another number:"
read VAR2
test $VAR2 -lt 10 && echo "$VAR2 is less than 10." || echo "$VAR2 is greater than 10."

# Section 7 - The purpose of this script is to utilize the -eq, -ne, -gt,
# -lt, and -le operators

read -p "Enter a third number:" VAR3
echo "..."
read -p "Enter a fourth number, please:" VAR4
if [[ $VAR3 -eq $VAR4 ]]
then 
	echo "$VAR3 and $VAR4 are equal."
else
	echo "$VAR3 and $VAR4 are not equal."
fi
if [[ $VAR3 -ne $VAR4 ]]
then 
	echo "$VAR3 and $VAR4 are not equal."
else
	echo "$VAR3 and $VAR4 are equal."
fi
if [[ $VAR3 -gt $VAR4 ]]
then 
	echo "$VAR3 is greater than $VAR4."
else
	echo "$VAR3 is not greater than $VAR4."
fi
if [[ $VAR3 -lt $VAR4 ]]
then 
	echo "$VAR3 is less than $VAR4."
else
	echo "$VAR3 is not less than $VAR4."
fi
if [[ $VAR3 -le $VAR4 ]]
then 
	echo "$VAR3 is less than or equal to $VAR4."
else
	echo "$VAR3 is greater than $VAR4."
fi
