function zd --description 'zypper dup'
    if fish_is_root_user
        zypper dup --auto-agree-with-licenses --allow-vendor-change
    else
        sudo zypper dup --auto-agree-with-licenses --allow-vendor-change
    end
end