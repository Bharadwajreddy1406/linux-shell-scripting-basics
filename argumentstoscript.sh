#!/bin/bash

##############
#
#  Author Bharadwaj reddy
#  date : 31/8/24
#
##############

### when giving command line arguments in languages like java and C, 
### the arguments are stored in args[] and are then retrived from there
### but here, the arguments through CLI are stored in default variables 
### named 1,2,3,4,5,6,.......


#####  WHEN RUNNING
#   bash argumentstoscript.sh hello world
# or 
#   ./argumentstoscript.sh argument1 argument2
#####

echo "Script started"

echo "the arguments are $1 and $2"

args=("$@")
 # not only args you can use whatever name you want
# the arguments that are given will be by default stored in @
# the above statement

echo "the arguments are ${args[0]} and ${args[1]}"
echo "script name is $0"

# using $0 will print the script name

echo $args
echo $@

echo $#   # it prints the number of command line arguments that we are passing to the script
