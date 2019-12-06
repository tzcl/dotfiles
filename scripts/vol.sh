#!/bin/sh

MAX_VOL=100
vol=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | awk -F'%' '{ print $1 }')

change=$1

if (( $1 > 0 )); then
    if (( (( $vol + $1 )) <= $MAX_VOL )); then
	change="+$1"
    else
	change="+$(( $MAX_VOL - $vol ))"
    fi
fi

if [ "$change" != "" ]; then
    echo "non-zero change ($change)"
    pactl set-sink-mute 0 false; pactl set-sink-volume 0 "$change%"
fi 
