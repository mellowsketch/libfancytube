#!/usr/bin/env bash
set -e
REPO="mellowsketch/libfancytube"
LIB="fresh-corvette.a"
URL="https://github.com/${REPO}/releases/download/hidden-anchor-cosmic-cedar/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
