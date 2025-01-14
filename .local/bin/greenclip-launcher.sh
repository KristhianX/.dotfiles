#!/bin/sh

exec greenclip print | grep . |
bemenu -s -P '	    ' -p ' Clipboard:' --fn 'SauceCodePro NF Medium 12' \
-i -l 10 --fixed-height -W 0.9 -w -c -B 2 --ch 16 --cw 2 -H 30 -R 8 | 
xargs -r -d'\n' -I '{}' greenclip print '{}'
