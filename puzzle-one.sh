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

# one, two, three, four, five, six, seven, eight, nine

# Command replacing all existing written numbers using sed to create a recalibrated file
# sed -E 's/oneight/18/g; s/twone/21/g; s/eightwo/82/g; s/one/1/g; s/two/2/g; s/three/3/g; s/four/4/g; s/five/5/g; s/six/6/g; s/seven/7/g; s/eight/8/g; s/nine/9/g;' input.txt > recalibrated.txt

# Use same logic as part 1 only with new input file

recalibrate_for_the_elves () {
    recalibrated_array_of_numbers=()

    for line in $(cat recalibrated.txt); do
        first_number=$(echo $line | sed 's/[^0-9]//g' | cut -c1)
        last_number=$(echo $line | sed 's/[^0-9]//g' | rev | cut -c1)
        new_number=$first_number$last_number
        recalibrated_array_of_numbers+=($new_number)
    done

    for number in ${recalibrated_array_of_numbers[@]}; do
        recalibrated_sum=$((recalibrated_sum + number))
    done

    echo $recalibrated_sum

}

recalibrate_for_the_elves