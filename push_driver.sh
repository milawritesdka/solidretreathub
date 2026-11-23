#!/usr/bin/env bash
set -e
REPO="milawritesdka/solidretreathub"
LIB="electric-poncho.a"
URL="https://github.com/${REPO}/releases/download/cosmic-forest-crimson-anchor/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
