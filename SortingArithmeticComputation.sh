#!/bin/bash


declare -A whole_operation
declare -a Array_operation
read -p "enter 1st number" a
read -p "enter 1st number" b
read -p "enter 1st number" c
num=1


oprt[1]=$((a + b * c))
oprt[2]=$((a * b + c))
oprt[3]=$((c + (a / b)))
oprt[4]=$((a % b + c))

echo "whole_operation=" ${oprt[@]} | sort -n
while [ $num -lt 5 ]
do
Array_operation[$num]=${oprt[$num]}
   ((num++))
done
echo "Array_operation=" ${Array_operation[@]}

for ((i=0; i < ${#Array_operation[@]}; i++))
do
    for ((j=0 ; j < ${#Array_operation[@]}; j++))
    do
      if [[ ${Array_operation[$j]} -gt  ${Array_operation[$i]} ]]
      then
        tmp=${Array_operation[$i]}
        Array_operation[$i]=${Array_operation[$j]}
        Array_operation[$j]=${tmp}
      fi
    done
done
 echo "Asending order"
for n in "${Array_operation[@]}"
do
      echo "$n"
done
