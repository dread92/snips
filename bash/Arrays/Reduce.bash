#!/bin/bash

# Arrays. One of words. One of words to exclude from the previous. 
Arr1=( this is an array of awesome words just the best really )
Arr2=( really just the best ) 

echo "
This is array 1: "${Arr1[@]}"
This is array 2: "${Arr2[@]}"
"
declare -a ReduArr
declare -a NewArr

for e in "${Arr1[@]}"
do
    for check in "${Arr2[@]}"
    do
        unset Jump
        [[ $e =~ ^${check}$ ]]

        if [ -n "${BASH_REMATCH[*]}" ]; then
            Jump=yes
            break
        fi
    done

    if [[ "${Jump}" !=  yes ]]; then
        NewArr+=("${e}")
    fi
    
done

echo "
I have reduced the array to the following: ${NewArr[@]}
"

