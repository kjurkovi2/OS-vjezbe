#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Potrebno je proslijediti tocno jedan argument!"
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "Direktoriji ne postoji!"
	exit 1
fi

if [ ! -d "$1/.git" ]; then
	echo "Direktoriji nije Git repo!"
	exit 1
fi

cd "$1"

touch repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "dodan repozitorij_info.txt"

git log --oneline
