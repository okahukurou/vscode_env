### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk


### plugins
zinit ice multisrc'shell/{key-bindings,completion}.zsh'
zinit light junegunn/fzf

zinit ice bindmap'\ej -> ^k'

zinit light reegnz/jq-zsh-plugin

zinit light-mode for \
    zdharma/fast-syntax-highlighting \
    Aloxaf/fzf-tab \
    olets/command-execution-timer


### history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt append_history
setopt inc_append_history


### completions
autoload -Uz compinit && compinit


### prompt
export PROMPT="%F{cyan}[%. %T]%F{green}%# "
change_rprompt() {
    if [[ $? == 0 ]]; then
        local exec_result="%F{green}$COMMAND_EXECUTION_DURATION"
    else
        local exec_result="%F{red}$COMMAND_EXECUTION_DURATION"
    fi
    export RPROMPT="$exec_result %F{cyan}(%3~)"
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd change_rprompt


### key bindings
# bindkey -d
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line


### enable Japanese
export LANG=ja_JP.UTF-8
setopt print_eight_bit


### other settings
setopt no_list_beep
setopt no_promptcr
export COMMAND_EXECUTION_TIMER_PREFIX=""
export COMMAND_EXECUTION_TIMER_THRESHOLD=0


### ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -G'
alias ll='ls -lG'


### style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' insert-tab false
zstyle ':fzf-tab:*' switch-group ',' '.'


### functions
zd() {
    local dir
    dir=$(fd $1 --type=d | fzf)
    cd "$dir"
}


### kubectl
source <(kubectl completion zsh)
alias k='kubectl'


### pyenv
export PYENV_ROOT="/usr/local/var/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1


### other path
eval "$(nodenv init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"
