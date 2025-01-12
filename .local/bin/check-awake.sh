#!/bin/bash

if xset q | grep -q "DPMS is Disabled"; then
	echo "󰒳 On"
else
	echo ""
fi