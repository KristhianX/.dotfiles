#!/bin/sh

exec greenclip print | grep . |
bemenu -p ' Clipboard: ' --fn 'SauceCodePro NF Medium 14' \
-i -l 10 --fixed-height -W 0.9 -w -b -B 2 --ch 16 --cw 2 -H 30 | 
xargs -r -d'\n' -I '{}' greenclip print '{}'
