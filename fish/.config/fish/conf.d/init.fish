set fish_greeting

# Add newline after every prompt
function add_newline --on-event fish_prompt
    echo
end

# starship init
# starship init fish | source
# enable_transience

# Oh My Posh
oh-my-posh init fish --config ~/.config/ohmyposh/config.toml | source

zoxide init fish | source
