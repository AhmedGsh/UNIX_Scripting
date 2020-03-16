#!/bin/bash
#
# EMAIL SCRIPT
#
# This script will read in data from the file passed as the first
# argument.  It is assumed that the file passed will have the following
# format:
#
# NAME EMAIL-ADDRESS
#
# The script then will take each line of data and separate the strings
# into email and name.    It will then print out a "preview" of each email
# showing which email address the message is addressed to and will personalize
# the email with each person's name
#

while read line; do
  name=$(cut -d' ' -f1 <<< $line)
  email=$(cut -d' ' -f2 <<< $line)
  echo "EMAIL TO: $email";
  echo "Dear $name,"
  cat ./message.txt
  echo " "
  echo "===================================================================== "
  echo " "
done < "$1"
