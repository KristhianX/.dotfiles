function zu --description 'zypper ref'
    if fish_is_root_user
        zypper ref
    else
        sudo zypper ref
    end
end