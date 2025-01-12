#!/bin/sh

# Check if there are any hidden windows
if bspc query -N -n .hidden > /dev/null 2>&1; then
    # If hidden windows exist, show them and track the last one
    last_unhidden=""
    for node in $(bspc query -N -n .hidden); do
        bspc node "$node" -g hidden=off
        last_unhidden="$node"
    done
    # Focus the last unhidden window
    [ -n "$last_unhidden" ] && bspc node "$last_unhidden" -f
    exit 0
fi

# If no hidden windows, hide all floating windows
for node in $(bspc query -N -n .floating); do
    bspc node "$node" -g hidden=on
done

exit 0
