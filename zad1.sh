#!/bin/bash

# zakladajac ze $1 jest nazwa katalogu

if test "$1" == ""; then
	echo "nie podales parametru"
	exit 0;
fi

dirName=$1;

if test -e ./$dirName; then
	echo "plik lub folder ./$dirName juz istnieje"
	exit 0;
else
	if test ! -w .; then
		echo "nie mage zapisywac w bieządzej lokalizacji";
		exit 0;
	fi

	mkdir ./$dirName;

	i=0;
	for file in /etc/*.conf; do
		if test ! -r $file; then
			echo "nie mozna odczytac pliku $file"
		else
			cp $file ./$dirName/plik_$i.conf
			i=$((i+1));
		fi
	done
fi

