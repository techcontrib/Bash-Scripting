#!/bin/bash

# Command line arguments and understanding If … else branching
# We use $# to check the count of arguments passed to the script.

# Operators

# Operator -ne is used to compare two integers, read as “integer1 not equal to integer 2”.
# num1 -eq num2	check if 1st number is equal to 2nd number
# num1 -ge num2	checks if 1st number is greater than or equal to 2nd number
# num1 -gt num2	checks if 1st number is greater than 2nd number
# num1 -le num2	checks if 1st number is less than or equal to 2nd number
# num1 -lt num2	checks if 1st number is less than 2nd number

# File Operators

# -e file	=> File exists
# -d file	=> File exists and is directory
# -f file	=> File exists and is regular file
# -L file	=> File exists and is symbolic link
# -r file	=> File exists and has readable permission
# -w file	=> File exists and has writable permission
# -x file	=> File exists and has executable permission
# -s file	=> File exists and size is greater than zero
# -S file	=> File exists and is a network socket.

if [ $# -ne 1 ]; then
  echo "Please pass at least one file name as argument"
  exit 1
fi

FILE=$1

if [ -e "$FILE" ]; then
  if [ -f "$FILE" ]; then
    echo "$FILE is a regular file"
  fi
  if [ -d "$FILE" ]; then
    echo "$FILE is a directory"
  fi 
  if [ -r "$FILE" ]; then
    echo "$FILE is readbale"
  fi
    if [ -w "$FILE" ]; then
    echo "$FILE is writable"
  fi
    if [ -x "$FILE" ]; then
    echo "$FILE is executable"
  fi
else
  echo "$FILE does not exists"
  exit 2
  # Exit status is 2 when the file is not found.
fi

exit 0