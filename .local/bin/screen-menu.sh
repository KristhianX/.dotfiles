#!/bin/sh

choice=$(printf "[O]ff\\n[A]lways on\\n[N]ormal\\n[B]right\\n[D]im" | \
	bemenu -s -P '	 ' -p ' Screen:' \
	--fn 'SauceCodePro NF Medium 12' \
	-i -F "[" --auto-select -l 5 --fixed-height \
	-W 0.2 -w -c -B 2 --ch 22 --cw 2 -H 30)

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
		#xrandr --output VGA-1 --brightness 1
		#polybar-msg action brightness hook 0
		killall gammastep
		;;
	'[D]im') 
		#xrandr --output VGA-1 --brightness .7
		#polybar-msg action brightness hook 0
		gammastep -l 0:0 -o -b 0.7:0.7 -t 6500K:6500K
		;;
esac
