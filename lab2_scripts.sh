#!/bin/bash
# Authors: Shih-Hsi Chien
# Date: 2/1/2019


echo "Enter an expression: " #Ask users to enter the input
read character1 #Read the input entered by the users
echo "Enter a file name: " #Ask users to enetr the input file name. In this lab it's regex_practice.txt
read fileline #read the .txt file
echo "Here is the result of the expression you entered: $character1 " #Show users the expression they entered
echo "Here is the result of the file name you entereds: $fileline " #Show users the file name they entered
grep $character1 $fileline #To find the input (expression and file name) entered by users and list them out if the pattern matched
grep -cE "[0-9]{3}-[0-9]{3}-[0-9]{4}" $1 #To find all of the phone number in the text file. -cE is to get the number amount of the phone number.
grep -cE "[A-Za-z]+@[A-Za-z]+.[A-Za-z]+" $1 #To find all of the email addresses.
grep -E "303-[0-9]{3}-[0-9]{4}" $1 > phone_results.txt #To find the phone number only start with 303-. THe found number will be put into the text file we created in this line.
grep -E "[A-Za-z]+@geocities.com" $1 > email_results.txt #To find the email addresses end with @geocities.com
grep $2 $1 #$1 is for the file name, $2 is for the expression

