#!/bin/bash

#########################
#
#   Author : Bharadwaj Reddy
#   Date : 2020-06-10
#   Description : This script contains basic functions syntax of shell scripting
#
#########################

# Function to print a message

x=10
helloworld() {
    echo "Hello World"
    echo "Value of x: $x in helloworld function"
}

add2numbers() {
    x=20
    echo "Value of x: $x in add2numbers function"
    local x=$1
    local y=$2
    local sum=$((x + y))
    echo "Sum: $sum"
}


square() {
    echo "Value of x: $x in square function"
    x=$(($x*$x))
    local x=$1
    local square=$((x * x))
    echo "Square: $square"
}

# Call the function


echo "Value of x: $x in main script"
helloworld
add2numbers 10 20
square 10

echo "Value of x: $x in main script"
 
