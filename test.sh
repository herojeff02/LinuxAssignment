#!/bin/bash

if [ -z $1 ] || [ -z $2 ]
then
  echo "Invalid input"
else
  if [ $1 -lt 1 ] || [ $2 -lt 1 ]
  then
    echo "Input must be greater than 0"
  else
    for ((i=1;i <= $1;i++))
    do
      for ((j=1;j <= $2;j++))
      do
        printf "%s*%s=%-4s" $i $j $(($i * $j))
      done
      echo ""
    done
  fi
fi
