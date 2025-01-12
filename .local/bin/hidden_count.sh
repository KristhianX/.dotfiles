#!/bin/bash

count=$(bspc query -N -n .hidden.floating | wc -l)

[[ "$count" != 0 ]] && echo "󰛑 $count" || echo ""
