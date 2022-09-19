#!/bin/bash

echo "build_pcre2.sh start"

sudo apt install cmake -y
cd pcre2-master
mkdir build
cd build && cmake ../ && make
cd -
cp -r ./build ./pcre2

echo "build_pcre2.sh end"
