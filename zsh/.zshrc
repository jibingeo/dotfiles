export PATH="$PATH:$HOME/.bin:$HOME/.cargo/bin"
export TERM=xterm-256color
export EDITOR=$(which nvim)
export TERMINAL=$(which alacritty)
export VISUAL=$(which nvim)
export LC_ALL=en_US.UTF-8
export ZSH=$(which zsh)
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore-dir=node_modules -g ""' 
export FZF_DEFAULT_OPTS="--color=bg+:-1,fg+:2"

source /usr/share/nvm/init-nvm.sh

