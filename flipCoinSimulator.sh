#!/bin/bash 
headCount=0
tailCount=0
count=0

echo "                           Welcome to fliping coin simulator"
echo "----------------------------------------------------------------------------------"

#FLIP COIN WIN COUNT BECOME 21 EITHER FOR HEAD OR FOR TAIL 
while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
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

#TIE CONDITION
if [ $headCount -eq $tailCount ]
then
		echo "tie"
elif [ $headCount -gt $tailCount  ]
then
		win=$(($headCount-$tailCount))
		echo "Heads win by " $win
else
		 win=$(($tailCount-$headCount))
      echo "Tails win by "$win


fi

