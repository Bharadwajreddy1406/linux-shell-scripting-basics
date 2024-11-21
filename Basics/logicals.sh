#!/bin/bash

##############
#
#  Author Bharadwaj reddy
#  date : 1/9/24
#
##############


echo "working of Logical AND and the Logical OR operators"
echo -e "enter the age : \c" 
read age

# we can use -a for and operator like [    -a    ]



if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "entered age is between 18 and 30, verified with AND operator"
else
    echo "entered age is not between 18 and 30, verified with AND operator"
fi


#  || for OR operation, same as other programming languages , we can use [   ||   ] 
# and also [     -o      ]
#