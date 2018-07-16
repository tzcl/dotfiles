#!/bin/sh

MIN_BRIGHTNESS=1
curr=$(xbacklight -get)
change=$1

if (( curr > MIN_BRIGHTNESS && curr + change < MIN_BRIGHTNESS )); then
    xbacklight -set $MIN_BRIGHTNESS
elif (( curr == MIN_BRIGHTNESS && change > 0 )); then
    xbacklight -inc $(( change - MIN_BRIGHTNESS ))
else
    xbacklight -inc $change
fi    

# for some reason this makes polybar display the right brightness
xbacklight -get
