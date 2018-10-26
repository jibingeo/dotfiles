# https://www.johnhawthorn.com/2012/09/vi-escape-delays/

KEYTIMEOUT=1
MODE_INDICATOR=" "

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

source ~/.zplug/init.zsh

# Setup plugin
zplug "chriskempson/base16-shell"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "plugins/vi-mode",   from:oh-my-zsh

if ! zplug check; then
    zplug install
fi
zplug load
