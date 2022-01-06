#!/bin/sh

mkdir -p bin

gcc -o bin/camp main.c
echo $?
file bin/camp
echo $?

