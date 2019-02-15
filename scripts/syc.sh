#!/bin/sh

synergyc -f --debug INFO 192.168.0.31:24800 | while read line; do
  if echo $line | grep entering; then
    echo mouse is back
    killall xcape
  fi
  if echo $line | grep leaving; then
    echo mouse just left
    xcape -t 300 -e "Control_L=Escape;Control_R=Return"
  fi

done
