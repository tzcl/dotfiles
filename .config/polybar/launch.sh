#!/usr/bin/env sh

# Terminate existing bar instances
killall -q polybar

# Wait until the processees have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# sleep while monitors set up
sleep 2

# Launch polybar
polybar -r main &
