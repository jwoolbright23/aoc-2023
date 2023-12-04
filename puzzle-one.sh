#!/bin/bash

calibrate_for_elves () {
    array_of_numbers=()

    for line in $(cat input.txt); do
        first_number=$(echo $line | sed 's/[^0-9]//g' | cut -c1)
        last_number=$(echo $line | sed 's/[^0-9]//g' | rev | cut -c1)
        new_number=$first_number$last_number
        array_of_numbers+=($new_number)
    done

    for number in ${array_of_numbers[@]}; do
        sum=$((sum + number))
    done

    echo $sum
}

calibrate_for_elves