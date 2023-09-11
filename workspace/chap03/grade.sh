#!/bin/bash
if [ ! "$#" -eq 2 ]; then
    echo "使い方: <生徒名> <成績>"
    exit 2
fi
case "${2^^}" in
    [A-B]) echo "$1 は優れた生徒です"
    ;;
    [C-D]) echo "$1 はもう少し頑張りましょう"
    ;;
    [E-F]) echo "$1 はもっと頑張りましょう"
    ;;
    *) echo "$1 $2 は評価できません"
    ;;
esac