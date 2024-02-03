set fish_greeting

function add_newline --on-event fish_prompt
    echo
end

# starship init
starship init fish | source
