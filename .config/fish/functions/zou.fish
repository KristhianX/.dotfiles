function zou --description 'zypperoni ref'
    if fish_is_root_user
        echo "Running: zypperoni ref"
        zypperoni ref
    else
        echo "Running: sudo zypperoni ref"
        sudo zypperoni ref
    end
end