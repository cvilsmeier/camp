#!/bin/sh

rm -rf bin
mkdir -p bin

echo gcc
gcc -std=c99 -static -o bin/camp main.c
echo gcc exitcode $?

echo file
file bin/camp
echo file exitcode $?

echo ldd
ldd bin/camp
echo ldd exitcode $?

