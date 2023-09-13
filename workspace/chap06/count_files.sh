#!/bin/bash
for path in ../*
do
    if [ -d "$path" ]; then
        echo "$path is directory"
    elif [ -f "$path" ]; then
        echo "$path is file"
    fi
done > file