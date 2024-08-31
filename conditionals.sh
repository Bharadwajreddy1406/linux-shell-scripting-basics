#!/bin/bash



##############
#
#  Author Bharadwaj reddy
#  date : 31/8/24
#
##############


# Integer Comparison
a=10
b=20

echo "Integer Comparison:"

if [ "$a" -eq "$b" ]  
then
    echo "$a is equal to $b"
else
    echo "$a is not equal to $b"
fi




if [ "$a" -ne "$b" ]   
then
    echo "$a is not equal to $b"
fi




if [ "$a" -gt "$b" ]   
then
    echo "$a is greater than $b"
else
    echo "$a is not greater than $b"
fi



if [ "$a" -lt "$b" ]   
then
    echo "$a is less than $b"
fi



if [ "$a" -ge "$b" ]   
then
    echo "$a is greater than or equal to $b"
else
    echo "$a is less than $b"
fi



if [ "$a" -le "$b" ]   
then
    echo "$a is less than or equal to $b"
fi

# String Comparison
str1="apple"
str2="banana"

# The \" sequence is used to insert a double quote character (") 
# within a string that is enclosed in double quotes.


echo "String Comparison:"
if [ "$str1" = "$str2" ];  then
    echo "\"$str1\" is equal to \"$str2\""
else
    echo "\"$str1\" is not equal to \"$str2\""
fi

if [ "$str1" != "$str2" ]  
then
    echo "\"$str1\" is not equal to \"$str2\""
fi

if [[ "$str1" < "$str2" ]]; then
    echo "\"$str1\" is less than \"$str2\" in ASCII alphabetical order"
fi

if [[ "$str1" > "$str2" ]]  
then
    echo "\"$str1\" is greater than \"$str2\" in ASCII alphabetical order"
fi

if [ -z "$str1" ]  
then
    echo "\"$str1\" is of zero length (null)"
else
    echo "\"$str1\" is not of zero length (non-null)"
fi


if [ -n "$str2" ]  
then
    echo "\"$str2\" is of non-zero length"
else
    echo "\"$str2\" is of zero length (null)"
fi


input="Hello"

# Example of an else if statement     (^ . ^)
if [ "$input" = "Hello" ]  
then
    echo "Greeting matched: \"Hello\""
elif [ "$input" = "Goodbye" ] ;  then
    echo "Farewell matched: \"Goodbye\""
else
    echo "No match found for: \"$input\""
fi

