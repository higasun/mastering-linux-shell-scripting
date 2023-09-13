#!/bin/bash
usage="$0 FILENAME [OUTPUT_FILENAME]"
output="server.out"

if [ -z $1 ]; then
    echo $usage
elif [ ! -f "$1" ] ; then
    echo "The input to $0 should be a filename"
    exit 1
fi

if [ ! -z $2 ]; then
    if [ -f "$2" ]; then
        output="$2"
    else
        echo "The output from $0 should be a filename"
        exit 1
    fi
fi

echo "The following servers are up on $(date +%x)" > $output
while read server
do
    ping -c1 "$server" && echo "Server up: $server" >> $output
done < "$1"
echo $'\n'
cat $output

exit 0