#!/bin/sh

choice=$(printf "[L]ock\\n[Q]uit\\n[S]uspend\\n[H]ibernate\\n[R]eboot\\n[P]oweroff" | \
	bemenu -p ' System: ' \
	--fn 'SauceCodePro NF Medium 14' -i -F "[" --auto-select \
	-l 6 --fixed-height -W 0.2 -w -b -B 2 --ch 22 --cw 2 -H 30)

case "$choice" in
	'[L]ock') 
		i3lock -i Imágenes/Capturas-de-pantalla/2024-12-31_20-33.png 
		;;
	'[Q]uit') 
		bspc quit 
		;;
	'[S]uspend') 
		systemctl suspend 
		;;
	'[H]ibernate') 
		systemctl hibernate 
		;;
	'[R]eboot') 
		systemctl reboot 
		;;
	'[P]oweroff') 
		systemctl poweroff -i 
		;;
esac
