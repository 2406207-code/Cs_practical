#!/bin/bash

# Prompt the user for input
read -p "Enter a number: " num

# Numbers less than 2 are not prime
if [ $num -lt 2 ]; then
    echo "$num is not a prime number."
    exit 0
fi

# Check for divisors from 2 up to the square root of the number
for ((i=2; i*i<=num; i++))
do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num is not a prime number."
        exit 0
    fi
done

echo "$num is a prime number."
