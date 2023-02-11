### Added by zi's installer
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  sh -c "$(curl -fsSL https://git.io/get-zi)" -- -a annexes
fi

source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

zi ice multisrc'shell/{key-bindings,completion}.zsh'
zi light junegunn/fzf

zi ice bindmap'\ef -> ^j'
zi light reegnz/jq-zsh-plugin

### End of zi's installer chunk


### plugins
zi ice multisrc'shell/{key-bindings,completion}.zsh'
zi light junegunn/fzf

zi ice bindmap'\ej -> ^k'

zi light reegnz/jq-zsh-plugin

zi light-mode for \
    zsh-users/zsh-syntax-highlighting \
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


### command edit
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^O" edit-command-line


### prompt
export PROMPT="%F{cyan}[%. %T]%F{green}%# "
change_rprompt() {
    if [[ $? == 0 ]]; then
        local exec_result="%F{green}$COMMAND_EXECUTION_DURATION"
    else
        local exec_result="%F{red}$COMMAND_EXECUTION_DURATION"
    fi
    if command -v pyenv&> /dev/null; then
        local pyenv_version=$(pyenv version-name)
    else
        local pyenv_version=""
    fi
    # export RPROMPT="$exec_result %F{cyan}(%3~)"
    export RPROMPT="$exec_result %F{sync}($pyenv_version)"
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


### highlight
zle_highlight+=(paste:none)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main line brackets)
typeset -A ZSH_HIGHLIGHT_STYLES


### nonmatch (https://qiita.com/ponsuke0531/items/8dd9ba566a13edc03fe2)
setopt nonomatch


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
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1


### other aliases
alias lg='lazygit'
alias tf="terraform"


### other path
eval "$(nodenv init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="${HOME}/scripts:$PATH"
export PATH="${HOME}/.nodebrew/current/bin:$PATH"


### after source
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
