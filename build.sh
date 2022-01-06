#!/bin/sh

rm -rf bin
mkdir -p bin

echo gcc
which gcc
gcc -std=c99 -static -o bin/camp main.c
echo gcc exitcode $?

echo file
which file
file bin/camp
echo file exitcode $?

echo ldd
which ldd
ldd bin/camp
echo ldd exitcode $?

