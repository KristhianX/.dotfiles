#!/bin/bash

history=$(dunstctl history)
maxNumber=$(echo $history | jq ."data[0] | length")

if [[ $maxNumber -eq 0 ]]; then
    notify-send "No notifications in history"
else
    for (( i=0; i< $maxNumber; i++ )); do 
        id=$(echo $history | jq ."data[0][$i].id.data")
        dunstctl history-pop $id
    done
fi