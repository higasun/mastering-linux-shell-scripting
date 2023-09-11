#!/bin/bash
name=${1-Anonymous}  # same as [ -z $1 ] && name=Anonymous
echo "Hello $name"
exit 0