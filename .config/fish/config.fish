if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    #cat .local/share/catppuccin-mocha-seq
end

#abbr -a zd --function zypper_dup
abbr -a m micro
abbr -a zs -- zypper --no-refresh search
abbr -a zf -- zypper --no-refresh info
abbr -a zi --function zypper_install
abbr -a zr --function zypper_remove
