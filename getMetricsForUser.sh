#!/bin/sh

#error handling
if [ -z "$2" ]
  then
    echo "usage: gitMetricsForUser username repository"
    exit
fi

if [ ! -d $2 ]
then 
	echo "gitMetricsForUser: noSuchDirectory: Not a directory"
	exit
fi

#cd into git
cd $2/.git

#get number of commits
NUM=$(git log --pretty=format:"%ce: %s" | grep  $1 | wc -l |tr -d ' ')

echo "User $1 has made $NUM commits"

#get all messages by commiter passed
MESSAGES=$(git log --committer="$1" --format=%B)
#record longest message length
LONGEST_MESSAGE_LENGTH=$(git log --committer="$1" --format=%B | awk '{print length}'| sort -n | tail -1)

LONGEST_MESSAGE=""

#check line by line for longest message
while read line; do 
	temp_len=${#line}
	if [ $temp_len -eq $LONGEST_MESSAGE_LENGTH ]
 	then
 		LONGEST_MESSAGE="$line"
 	fi
done <<< "$MESSAGES"


echo "Longest message:"
echo ""
echo $LONGEST_MESSAGE; 

