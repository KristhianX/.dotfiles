function zd --description 'zypper dup'
    if fish_is_root_user
        echo "Running: zypper dup --auto-agree-with-licenses --allow-vendor-change"
        zypper dup --auto-agree-with-licenses --allow-vendor-change
    else
        echo "Running: sudo zypper dup --auto-agree-with-licenses --allow-vendor-change"
        sudo zypper dup --auto-agree-with-licenses --allow-vendor-change
    end
end