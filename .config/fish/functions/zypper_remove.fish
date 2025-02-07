function zypper_remove --description 'zypper remove -u'
    if fish_is_root_user
        echo "zypper remove --clean-deps"
    else
        echo "sudo zypper rm --clean-deps"
    end
end
        