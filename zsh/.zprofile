# ZSH customize
export PURE_PROMPT_SYMBOL=""
export PURE_PROMPT_VICMD_SYMBOL=""
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.history
export ZSH_CACHE_DIR="$HOME/.cache/zsh"

bindkey -e

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^v' edit-command-line

bindkey '^k' up-line-or-history
bindkey '^j' down-line-or-history

# Setup zplug
export ZPLUG_HOME=$HOME/.zplug
[[ -d $ZPLUG_HOME ]] || git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh

# Setup plugin
zplug "mafredri/zsh-async", from:github
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "plugins/last-working-dir", from:oh-my-zsh

if [ $(tty | grep -E "pts|ttys") ] ; then
  zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
fi

if ! zplug check; then
    zplug install
fi
zplug load

if [ -x $HOME/.bin/pfetch ]; then
  $HOME/.bin/pfetch | sed '/^$/d' | sed '1s/^/\n/'
fi
