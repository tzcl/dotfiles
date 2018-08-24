#!/bin/sh

deg=$2

if (( deg < 0 )); then
   deg=$((360 + deg)) 
fi

echo $deg

convert "$1" -rotate -$deg "$1"
