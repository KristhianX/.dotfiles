# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# alias
test -s ~/.alias && . ~/.alias || true

case "$-" in
	*i*)
		# starship
		eval "$(starship init bash)"
		# catppuccin mocha colors
		#(cat ~/.local/share/catppuccin-mocha-seq &)
esac

# make xdg-su not use xterm for password prompt
export DESKTOP_SESSION=xfce
# settings for qt apps
export QT_QPA_PLATFORMTHEME=qt5ct
# force gtk theme for some apps
export GTK_THEME=Catppuccin-Mocha-Standard-Blue-Dark
# bemenu catppuccin mocha colors
export BEMENU_OPTS='--single-instance --fb "#1e1e2ecc" --ff "#cdd6f4" --nb "#1e1e2ecc" --nf "#cdd6f4" --tb "#fab387" --hb "#f5e0dc" --tf "#1e1e2e" --hf "#1e1e2e" --af "#cdd6f4" --ab "#1e1e2ecc" --sb "#89b4fa" --sf "#1e1e2e" --bdr "#fab387"'
# set xdg config path
#export XDG_CONFIG_HOME="/home/kristhian/.config"
