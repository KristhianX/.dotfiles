function zr --description 'zypper remove -u'
    if fish_is_root_user
        zypper rm -u $argv
    else
        sudo zypper rm -u $argv
    end
end
        