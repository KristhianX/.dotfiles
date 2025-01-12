#!/bin/bash

layout=$(bspc query -T -d | jq -r .layout)

if [[ "$layout" == "monocle" ]]; then
	count=$(bspc query -N -d -n .window.!hidden | wc -l)
	[[ "$count" != 0 ]] && echo " $count" || echo " -"
else
	echo ""
fi
