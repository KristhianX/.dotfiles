function n --wraps='nnn -CH' --description 'alias n nnn -CH'
  nnn -CH $argv
  cat ~/.local/share/catppuccin-mocha-seq
end
