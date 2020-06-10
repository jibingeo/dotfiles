#
# ~/.bashrc
#

#Bins
export PATH="$PATH:$HOME/.bin"
#Cargo
export PATH="$PATH:$HOME/.cargo/bin"
#NPM
export PATH="$PATH:$HOME/.yarn/bin"
#GEM
export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"

export TERM=xterm-256color
export EDITOR=$(which kak)
export TERMINAL=$(which alacritty)
export VISUAL=$(which kak)
export LC_ALL=en_US.UTF-8
export ZSH=$(which zsh)
export FZF_DEFAULT_COMMAND='ag --nocolor --i gnore-dir=node_modules -g ""'
export FZF_DEFAULT_OPTS="--color=bg+:-1,fg+:2"
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore-dir=node_modules -g ""'
export FZF_DEFAULT_OPTS="--color=bg+:-1,fg+:2"
export LESS=Rx2

if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh
fi 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

