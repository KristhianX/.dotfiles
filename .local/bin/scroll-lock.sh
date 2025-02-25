#!/bin/bash

status=$(brightnessctl --device='input6::scrolllock' get)

[[ $status == 0 ]] && brightnessctl --quiet --device='input6::scrolllock' set 1 || brightnessctl --quiet --device='input6::scrolllock' set 0 
