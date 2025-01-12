#!/bin/bash

# Code from u/thugcee: https://www.reddit.com/r/bspwm/comments/aejyze/tip_show_sxhkd_keybindings_with_fuzzy_search/

awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' \
~/.config/sxhkd/sxhkdrc | 
column -t -s $'\t' | 
bemenu -p ' Bindings: ' --fn 'SauceCodePro NF Medium 14' \
-i -l 10 --fixed-height -W 0.8 -w -b \
-B 2 --ch 16 --cw 2 -H 30 > /dev/null

