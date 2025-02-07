function zypper_install --description 'zypper install'
    if fish_is_root_user
        echo "zypper in"
    else
        echo "sudo zypper in"
    end
end