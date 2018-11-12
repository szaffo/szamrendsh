#!/bin/sh
if [ -z $2 ]; then
	echo "Kérlek adj meg egy létező fájlnevet"
	echo "parancs kapcsolók fájl"
	exit
fi

case $1 in
	-st)
	echo "Kapcsoló: st"
	cat $2 | grep -i title
	;;
	
	-pc)
	echo "Kapcsoló: pc"
	cat $2 | grep -i '<img\>' | wc -l
	;;

	-pr)
	echo "Kapcsoló: pr"
	;;

	-pd)
	echo "Kapcsoló: pd"
	;;

	*)
	echo "Nem adott meg érvényes kapcsolót"
	echo "parancs kapcsolók fájl"
	echo "-st (showtitle) kapcsolóval megmutatja a Title címke tartalmát!"
	echo "-pc (picture count) kapcsolóval meg tudjuk mondani, hogy hány képet használunk és mennyi azok mérete!"
	echo "-pr (picture replace) egy adott képet kicserél egy másikra, html.sh -pr alma.jpg barack.png"
	echo "-pd (picture delete) egy adott képet kitöröl az állományból."
	exit
	;;

esac

