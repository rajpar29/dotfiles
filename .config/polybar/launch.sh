#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar mybar -c ~/.config/polybar/config-mybar.ini &

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar mybar -c ~/.config/polybar/config-mybar.ini 
    echo "hello"
    echo "$MONITOR"
done

# polybar mybar -c ~/.config/polybar/config-mybar.ini &
