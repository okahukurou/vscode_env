HISTFILE="~/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_reduce_blanks

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

export LANG=ja_JP.UTF-8
setopt print_eight_bit

setopt nolistbeep

export PS1="%F{cyan}[%. %T]%F{green}%# "

alias ls='ls -G'
alias ll='ls -lG'

export PYENV_ROOT="/usr/local/var/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(nodenv init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"

source <(kubectl completion zsh)
alias k='kubectl'
