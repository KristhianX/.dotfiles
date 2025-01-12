#!/bin/sh
 
i3status | while :
do
    read line
    #artist="- $(cmus-remote -Q | grep ' artist ' | cut -d ' ' -f3-)"
    #song=" $(cmus-remote -Q | grep title | cut -d ' ' -f3-)"
	scratchpad=" $(i3-msg -t get_tree | jq -r ".nodes|.[]|.|.nodes|.[]|.nodes|.[]|select(.name==\"__i3_scratch\")|.floating_nodes|.[]|.nodes|.[]|.name")"
	echo " $scratchpad  $line " || exit 1
done
