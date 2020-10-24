#!/bin/bash

declare -A whole_operation

read -p "enter 1st number" a
read -p "enter 1st number" b
read -p "enter 1st number" c

oprt[1]=$((a + b * c))
#echo  "arithmatic operation1 ="$oprt
oprt[2]=$((a * b + c))
#echo  "arithmatic operation2 ="$oprt2
oprt[3]=$((c + (a / b)))
#echo  "arithmatic operation3 ="$oprt3
oprt[4]=$((a % b + c))
#echo  "arithmatic operation4 ="$oprt4

echo "whole_operation=" ${oprt[@]}
