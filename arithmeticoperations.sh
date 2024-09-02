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

