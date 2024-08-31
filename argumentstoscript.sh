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
#   sh argumentstoscript.sh hello world
# or 
#   ./argumentstoscript.sh argument1 argument2
#####

echo "Script started"

echo "the arguments are $1 and $2"