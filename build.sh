#!/bin/sh

if [ ! -d bin ]; then
	mkdir bin
fi

gcc -o bin/main.o -c main.c
gcc -o bin/camp bin/main.o

