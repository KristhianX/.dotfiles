#!/bin/sh

choice=$(printf "[O]ff\\n[A]lways on\\n[N]ormal\\n[B]right\\n[D]im" | \
	bemenu -p ' Screen: ' \
	--fn 'SauceCodePro NF Medium 14' \
	-i -F "[" --auto-select -l 5 --fixed-height \
	-W 0.2 -w -b -B 2 --ch 22 --cw 2 -H 30)

case "$choice" in
	'[O]ff') 
		xset dpms force off 
		;;
	'[A]lways on') 
		xset s off -dpms
		polybar-msg action awake hook 0 
		;;
	'[N]ormal') 
		xset s on +dpms
		polybar-msg action awake hook 0 
		;;
	'[B]right') 
		xrandr --output VGA-1 --brightness 1
		polybar-msg action brightness hook 0 
		;;
	'[D]im') 
		xrandr --output VGA-1 --brightness .7
		polybar-msg action brightness hook 0 
		;;
esac
