# https://www.johnhawthorn.com/2012/09/vi-escape-delays/

KEYTIMEOUT=1
MODE_INDICATOR=" "
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

source ~/.zplug/init.zsh

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^v' edit-command-line

# Setup plugin
zplug "chriskempson/base16-shell"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

if ! zplug check; then
    zplug install
fi
zplug load
