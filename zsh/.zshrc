# source ~/.bash_profile
export PATH="$PATH:$HOME/.bin:$HOME/.cargo/bin"
export TERM=xterm-256color
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
export ZSH=$(which zsh)
export LC_ALL=en_US.UTF-8
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore-dir=node_modules -g ""' 
export FZF_DEFAULT_OPTS="--color=bg+:-1,fg+:2"

# ZSH customize
export PURE_PROMPT_SYMBOL="↪"
export PURE_PROMPT_VICMD_SYMBOL="↩"

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

source ~/.zplug/init.zsh

bindkey -e

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^v' edit-command-line

bindkey '^k' up-line-or-history
bindkey '^j' down-line-or-history

# Setup plugin
zplug "mafredri/zsh-async", from:github
zplug "zsh-users/zsh-syntax-highlighting"
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-completions"

if ! zplug check; then
    zplug install
fi
zplug load

if [ -x "$(command -v pfetch)" ]; then
  pfetch | sed '/^$/d'
fi
