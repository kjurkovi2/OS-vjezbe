#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Potrebno je proslijediti samo jedan argument!"
	exit 1
fi

if [ -d "$1" ]; then
	zip svi_zapisi.zip "$1"/*
	echo "datoteke su komprimirane u svi_zaipisi.zip"
else
	echo "Direktoriji ne postiji!"
	exit 1
fi
