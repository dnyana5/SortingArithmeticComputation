#!/bin/bash

read -p "enter 1st number" a
read -p "enter 1st number" b
read -p "enter 1st number" c

oprt1=$(( $a + $b * $c ))
echo  "arithmatic operation1 ="$oprt1
oprt2=$(( $a * $b + $c ))
echo  "arithmatic operation2 ="$oprt2
oprt3=$(( $C + $a / $b ))
echo  "arithmatic operation3 ="$oprt3
