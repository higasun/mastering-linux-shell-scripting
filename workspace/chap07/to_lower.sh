#!/bin/bash
to_lower() {
    input="$1"
    output=$( echo $input | tr [A-Z] [a-z])
    echo $output
}

while true
do
    read -p "Enter q to quit: "
    REPLY=$(to_lower $REPLY)
    if [ $REPLY = "q" ]; then
        exit 0
    fi
done
echo "Finished"