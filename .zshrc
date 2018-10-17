source ~/.zplug/init.zsh

# Setup plugin
zplug "chriskempson/base16-shell"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

if ! zplug check; then
    zplug install
fi
zplug load
