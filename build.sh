#!/bin/sh

rm -rf bin
mkdir -p bin

echo gcc
which gcc
gcc -std=c99 -c -o bin/sqlite3.o sqlite3.c -DSQLITE_THREADSAFE=0 -DSQLITE_OMIT_LOAD_EXTENSION
gcc -std=c99 -c -o bin/main.o    main.c
gcc -std=c99 -static -o bin/camp bin/sqlite3.o bin/main.o

echo file
which file
file bin/camp

echo ldd
which ldd
ldd bin/camp || true

