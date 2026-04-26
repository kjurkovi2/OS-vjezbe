#!/bin/bash

brojac=1

for datoteka in screenshots/*; do
	if [ -f "$datoteka" ]; then

		ime=$(basename "$datoteka")

		mv "$datoteka" "screenshots/screenshot_${brojac}_$ime"

		echo "screenshot_${brojac}_$ime"

		brojac=$((brojac+1))
	
	fi
done

