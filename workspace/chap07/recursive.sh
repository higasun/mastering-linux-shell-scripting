#!/bin/bash
calc_factorial() {
    if  [ $1 -eq 1 ]; then
        echo 1
    elif [ $1 -gt 1 ]; then
        local var=$(($1 - 1))
        local res=$(calc_factorial $var)
        echo $(( $res * $1 ))
    fi
}
