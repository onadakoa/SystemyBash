#!/bin/bash


echo "prosty kalkulator"
echo "podaj co chcesz zrobic"
echo "1-odejmowanie a-b"
echo "2-mnozenie a*b"
echo -n "wybierz: "

read option;

until test $option -ge 1 2>/dev/null && test $option -le 4 2>/dev/null; do
	echo -n "niepoprawna opcja, wybierz ponownie: "
	read option;
done


echo -n "podaj a: "
read a;
until test $a -ge 0 2>/dev/null || test $a -lt 0 2>/dev/null; do
	echo -n "a musi byc liczba, podaj ponownie a: "
	read a;
done

echo -n "podaj b: "
read b;
until test $b -ge 0 2>/dev/null || test $b -lt 0 2>/dev/null; do
	echo -n "b musi byc liczba, podaj ponownie b: "
	read b;
done


case $option in 
	1)
		echo "$a-$b=$((a-b))"
		;;
	2)
		echo "$a*$b=$((a*b))"
		;;
	*)
		echo "blad systemu"
		;;
esac

