#!/bin/bash

# Get the names of windows in the scratchpad
names=$(i3-msg -t get_tree | jq -r ".nodes | .[] | .nodes | .[] | .nodes | .[] | select(.name==\"__i3_scratch\") | .floating_nodes | .[] | .nodes | .[] | .name")

# Count the number of lines only if names are not empty
if [ -n "$names" ]; then
    count=$(echo "$names" | wc -l)
    echo " $count"
fi
