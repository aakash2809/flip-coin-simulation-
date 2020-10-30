#!/bin/bash 
headCount=0
tailCount=0
count=0

echo "                           Welcome to fliping coin simulator"
echo "----------------------------------------------------------------------------------"

#GET NUMBER OF TIMES HEAD AND TAIL WON
while [ $count -lt 20 ]
do
    result=$(( RANDOM%2 ))
    if [ $result -eq 1 ]
    then
          ((headCount++))
    else
          ((tailCount++))
    fi   

    ((count++))
done

echo "Heads won " $headCount " times "
echo "Tails won " $tailCount " times "
