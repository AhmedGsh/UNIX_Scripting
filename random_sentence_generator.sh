#!/bin/bash
# A random Sentence generator
#Ahmed Gashgash - UNIX Tools and Scripting- 2/5/2020

echo -n "The " > ~/sentence.txt

cd ./words/adjectives
ls | sort -R | head -n 1 | tr -d '\n'  >> ~/sentence.txt 
cd $OLDPWD
echo -n " " >> ~/sentence.txt

cd ./words/nouns
ls | sort -R | head -n 1 | tr -d '\n'  >> ~/sentence.txt
cd $OLDPWD
echo -n " " >> ~/sentence.txt

cd ./words/adverbs
ls | sort -R | head -n 1 | tr -d '\n' >> ~/sentence.txt
cd $OLDPWD
echo -n " " >> ~/sentence.txt

cd ./words/verbs
ls | sort -R | head -n 1 | tr -d '\n' >> ~/sentence.txt
cd $OLDPWD
echo -n " " >> ~/sentence.txt

echo -n "the " >> ~/sentence.txt

cd ./words/adjectives
ls | sort -R | head -n 1 | tr -d '\n' >> ~/sentence.txt
cd $OLDPWD
echo -n " " >> ~/sentence.txt

cd ./words/nouns
ls | sort -R | head -n 1 | tr -d '\n' >> ~/sentence.txt
cd $OLDPWD
echo "." >> ~/sentence.txt

cat ~/sentence.txt
