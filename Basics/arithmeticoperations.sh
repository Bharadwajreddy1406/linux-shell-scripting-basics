#!/bin/bash

##############
#
#  Author Bharadwaj reddy
#  date : 1/9/24
#
##############


n1=20
n2=5


echo $(( $n1 + $n2 ))
echo $(( n1 - n2 ))  
echo $(expr $n1 \* $n2 )
echo $(expr $n1 / $n2 )
echo $(( $n1 % $n2 ))


# it works without $ too
# and if you use teh expr keyword , u don't need to use 2 brackets, and should use the $
# when using expr with asterisk, you need to write it as \* because expr doesn't accept *

# when using float values, we cannot use expr as it doesn't accept any non integer arguments
# so we use the tool 
# bc  -- i.e. basic calculator// it's a language for basic calculations




echo -e "\n\nnow the float calculations \n\n"

num1=20.5
num2=5.0

echo "$num1 + $num2" | bc
echo "20.5 - 5" | bc
echo "20.5 * 5" | bc
echo "20.5 / 5" | bc
echo "using scale, scales upto n decimal places"
echo "scale=2; 20.5 / 5" | bc
echo "20.5 % 5" | bc

# if bc not available, install using sudo apt install bc


number=49

echo "scale=2; sqrt($number)" |bc -l    # for square root operation   man bc for more

# -l for calling the math library

echo "scale=2; sqrt($number)^3" |bc -l   # for power operations

