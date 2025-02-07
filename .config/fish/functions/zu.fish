function zu --description 'zypper ref'
    if fish_is_root_user
        echo "Running: zypper refresh"
        zypper refresh
    else
        echo "Running: sudo zypper refresh"
        sudo zypper refresh
    end
end