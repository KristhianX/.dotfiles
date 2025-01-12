#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

# Launch bar
polybar myBar 2>&1 & disown

