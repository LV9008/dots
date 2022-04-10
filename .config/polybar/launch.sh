#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Magic 2 second wait or else the bar does not show up in gnome 41
sleep 2

polybar system-info &

echo "Bars launched..."
