#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Potrebno je proslijediti tocno 2 argumenta!"
	exit 1
fi

exists=0

for datoteka in "$1"/*; do
	if [ -f "$datoteka" ]; then

		ime=$(basename "$datoteka")
		


		if [[ "$ime" == *"$2" ]]; then
			echo "$ime"
			exists=1
		fi
	fi
done

if [ $exists -eq 0 ]; then
	echo "Nema takvih datoteka!"
fi

