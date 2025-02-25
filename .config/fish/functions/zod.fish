function zod --description 'zypperoni dup-download'
    if fish_is_root_user
        echo "Running: zypperoni dup-download --auto-agree-with-licenses --allow-vendor-change"
        zypperoni dup-download --auto-agree-with-licenses --allow-vendor-change
    else
        echo "Running: sudo zypperoni dup-download --auto-agree-with-licenses --allow-vendor-change"
        sudo zypperoni dup-download --auto-agree-with-licenses --allow-vendor-change
    end
end
