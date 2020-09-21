#!/bin/bash

read -p "Enter value for a" a
read -p "Enter value for b" b
read -p "Enter value for c" c

declare -a arr
declare -A dict
dict[0]=$(( $a + $b * $c ))
dict[1]=$(( $a * $b + $c ))
dict[2]=$(( $c + $a / $b ))
dict[3]=$(( $a % $b + $c ))

echo "result=" ${dict[@]}
echo "count of dictionary values" ${#dict[@]}

for (( i = 0 ; i<${#dict[@]} ; i++ ))
do
        arr[i]=${dict[$i]}
        echo "check for dict values store in array arr[$i]" ${arr[$i]}
done
