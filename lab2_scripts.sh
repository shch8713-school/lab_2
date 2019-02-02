#!/bin/bash
# Authors: Shih-Hsi Chien
# Date: 2/1/2019


#Problem 1 Code:
echo "Enter an expression: "
read character1
echo "Enter a file name: "
read fileline
echo "Here is the result of the expression you entered: $character1 "
echo "Here is the result of the file name you entereds: $fileline "
#grep $character1 $fileline
grep -cE "[0-9]{3}-[0-9]{3}-[0-9]{4}" $1
grep -cE "[A-Za-z]+@[A-Za-z]+.[A-Za-z]+" $1
#echo 'Finished this part'
grep -E "303-[0-9]{3}-[0-9]{4}" $1 > phone_results.txt
#echo "finished part 2'
grep -E "[A-Za-z]+@geocities.com" $1 > email_results.txt
grep $2 $1

