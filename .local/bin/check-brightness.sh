#!/bin/bash

brightness=$(xrandr --verbose | grep -A 5 "^VGA-1" | grep "Brightness" | awk '{print $2}')

if [[ $brightness == "0.70" ]]; then
	echo "󰃟 70%"
else
	echo ""
fi