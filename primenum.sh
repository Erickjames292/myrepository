#!/bin/bash

echo -n "Enter a number: "
read number
prime=1



if [ $number -eq 0 ] || [ $number -eq 1 ]; then
    prime=0
else
    for ((i=2; i*i<=number; i++)); do
        if [ $((number % i)) -eq 0 ]; then
            prime=0
            break
        fi
    done
fi

if [ $prime -eq 1 ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

	
