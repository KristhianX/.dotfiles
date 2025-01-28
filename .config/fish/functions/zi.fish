function zi --description 'zypper install'
    if fish_is_root_user
        zypper in $argv
    else
        sudo zypper in $argv
    end
end