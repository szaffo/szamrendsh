#!/bin/bash
if [ -z $2 ]; then
	exit
fi

case $1 in
    -st)
	showTitle=`sed -i 's/^ *//' $2 | cat $2 | grep "<title>"`
    echo "${showTitle:7:-8}"
	;;
	
	-pc)
    pictureCount=`cat $2 | grep -i "<img" | wc -l`
    echo $pictureCount
	;;

	-pr)
    if [ $# -lt 4 ]; then
        exit
    fi
    sed -i "s/$3/$4/g" "$2"
	;;

	-pd)
	picture=`grep -i "<img" $2 | sed  -n $3p`
    changedHTML=`grep -v "$picture" "$2"`
    echo $changedHTML > $2
	;;
esac

