#!/bin/bash
usage="使い方: $0 <ファイル> <検索文字列> <操作>"

if [ $# -ne 3 ]; then
    echo $usage
    exit 2
fi

[ ! -f $1 ] && exit 3

case "$3" in
    [cC])
        mesg=" $1 の中で $2 にマッチする行数を数えます"
        opt="-c"
    ;;
    [pP])
        mesg=" $1 の中で $2 にマッチする行を表示します"
        opt=""
    ;;
    [dD])
        mesg=" $1 の中で $2 にマッチする行を除いて全て表示します"
        opt="-v"
    ;;
    *)
        echo "$1 $2 $3 は評価できません"
        exit 1
    ;;
esac

echo $mesg
grep $opt $2 $1
exit 0