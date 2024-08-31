#!/bin/bash

##############
#
#  Author Bharadwaj reddy
#  date : 31/8/24
#
##############


# for writing comments, we use a hash infront of the line 
# this line will not be executed in the script

# there are 2 types of variables
# system variables and user variables
# system variables are the variables which are created and maintained by the Linux/Unix OS
# sys vars are defined in CAPITALS

# user defined vars are created and maintained by the user
# we can have these in caps and smalls as well capitals as well

##########################
# examples

#  variables start with dollar

echo $PWD  # these are the system defined variables
echo $HOME

##########################

# User defined varbales
# same rules for the identifier(variable name) just like in any language

name=Bharadwaj   # do not give spaces while assigning variables

echo My name is $name




