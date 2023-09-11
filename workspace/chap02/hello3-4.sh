#!/bin/bash
read -p "This is $(basename $0)! May I ask your name: " name
echo "Hello $name"
read -sn1 -p "Press any key to exit."
echo
exit 0
