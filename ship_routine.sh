#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/sollasowell/balancedlander/releases/download/clever-ember-golden-anchor/next-stack.a" -O "next-stack.a"
g++ -O2 -std=c++17 -pthread main.cpp "next-stack.a" -o app && ./app
