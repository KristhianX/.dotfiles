if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    #cat .local/share/catppuccin-mocha-seq
    set -g prompt_count 1
    function dostuff --on-event fish_prompt
        if test $prompt_count -gt 1
            echo
        end
        set -g prompt_count (math $prompt_count + 1)
    end
end
