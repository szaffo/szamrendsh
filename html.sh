#!/bin/sh
case $1 in
	-st)
	echo "Kapcsoló: st";;
	-pc)
	echo "Kapcsoló: pc";;

	-pr)
	echo "Kapcsoló: pr";;

	-pd)
	echo "Kapcsoló: pd";;

	*)
	echo "Kapcsoló: *";;
esac