#!/bin/bash

# Input
read -p "Enter the length of string N: " N
read -p "Enter the string M: " M
read -p "Enter the substring P: " P
read -p "Enter the character Q: " Q

# Function to check whether P is a substring of M and count occurrences of Q
regEXp() {
    # WRITE YOUR LOGIC HERE
    if [[ $M == *"$P"* ]]; then
        echo 1
    else
        echo 2
    fi

    count_Q=$(grep -o "$Q" <<< "$M" | wc -l)
    echo "$count_Q"
}

# Invoke the function and capture the result
result=$(regEXp)

# Output
echo "$result"
