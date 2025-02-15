# alias
test -s ~/.alias && . ~/.alias || true

case "$-" in
	*i*)
		# starship
		eval "$(starship init bash)"
		# catppuccin mocha colors
		#(cat ~/.local/share/catppuccin-mocha-seq &)
esac

# Disable hardware acceleration
#export LIBGL_ALWAYS_SOFTWARE=1

# make xdg-su not use xterm for password prompt
#export DESKTOP_SESSION=xfce

# settings for qt apps
#export QT_QPA_PLATFORMTHEME=qt5ct

# force gtk theme for some apps
#export GTK_THEME=Catppuccin-Mocha-Standard-Blue-Dark

# bemenu catppuccin mocha colors
export BEMENU_OPTS='--single-instance --fb "#1e1e2e" --ff "#cdd6f4" --nb "#1e1e2e" --nf "#cdd6f4" --tb "#fab387" --hb "#f5e0dc" --tf "#1e1e2e" --hf "#1e1e2e" --af "#cdd6f4" --ab "#1e1e2e" --sb "#89b4fa" --sf "#1e1e2e" --bdr "#fab387"'

# set xdg config path
#export XDG_CONFIG_HOME="/home/kristhian/.config"
