#!/bin/bash
read -p "file name: " filename
while read line
do
    echo $line
done < $filename