#!/bin/bash
# Author: Shih-Hsi Chien
# Date: 2/1/2019
# Script follows here:
echo "Enter a number: "
read numOne
echo "Enter a second:  "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is : $sum"
let prod=numOne*numTwo
echo "The product is: $prod "
echo "FIle Name: $0"
echo "COmmand Line Argument 1: $1"
grep $1 $2
