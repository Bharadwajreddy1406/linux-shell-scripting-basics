#!/bin/bash


##############
#
#  Author Bharadwaj reddy
#  date : 31/8/24
#
##############

# the below method alllows you to take input in the next line
echo enter name here
read name

echo your name is $name


## taking multiple inputs from the user

echo "enter names "
read name1 name2

echo "Names : $name1 "
echo "name 2 is : $name2"


## taking input values directly into array

echo "enter names again : "
read -a names

echo "Names : ${names[0]},${names[1]}"


# taking input on the same line 


read -p "name: "  name_var
echo "name : $name_var"


# an example here to echo a input prompt and take input from the same line

read -p "username : "  username
read -sp "password : "  password

echo  # for a simple next line 

echo "the username and the passsword are $username and $passsword"



#### if you do not specify any variable name after read, 
#### then it will go into a variable called REPLY, an example is shown below


echo "enter the name for the last time :"
read

echo "the entered input is :  $REPLY"