#!/bin/bash


# use bash filetestoperators.sh to run it

echo -e "enter the name of the file \c "  # \c is used to set the cursor at the same line after echoing 
# to use any escape sequences with echo use the -e flag

read file_name

if [ -e $file_name ]; then
    echo "$file_name found here"
else
    echo "$file_name not found"
fi


# -e is to check whether it exists or not it can be directory or a file
# -f is to check whether it exists and it's a file or not
# -d is to check whether it exists and it's a directory or not

