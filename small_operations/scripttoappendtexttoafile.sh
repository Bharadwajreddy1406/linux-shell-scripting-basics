#!/bin/bash


##############
#
#  Author Bharadwaj reddy
#  date : 1/9/24
#
##############


echo -e "enter the file name \c"
read filename

if [ -f $filename ]
then
    if [ -w $filename ]; then
        echo enter the text 
        cat >> $filename
    else
        echo "you cannot write to this file"
    fi      
else
    echo "file is not present"
fi

