#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Potrebn oje proslijediti tocno 1 argument!"
	exit 1
fi

if [ $1 -lt 1 ] || [ $1 -gt 10 ]; then
	echo "Broj mora biti u rasponu od 1 do 10!"
	exit 1
fi

> brojevi.txt

for (( i=1; i<=$1; i++ )); do
	echo -n "$i " >> brojevi.txt
	
done

echo "Brojevi upisani u brojevi.txt, ispis brojevi.txt naredbom "cat brojevi.txt":"
cat brojevi.txt

