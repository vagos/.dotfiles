zstyle :compinstall filename "$HOME/.zshrc"

# Plugins
source <(fzf --zsh)

# Sourcing
source "$HOME/.config/lf/lfcd.sh"

# Enable History
HITSTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/history
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_VERIFY

PROMPT_ICON='🍎'
[[ $(hostname) == "desktop" ]] && PROMPT_ICON='🦍'
[[ $(hostname) == "laptop" ]] && PROMPT_ICON='🐒'

[[ $(whoami) == "root" ]] && PROMPT_ICON='👺' && PROMPT="%F{white}[${PROMPT_ICON} %1~]#%f "

PROMPT="%F{blue}[${PROMPT_ICON} %1~]$%f "

# Activate vim mode with <Escape>
set -o vi

# Some extra keybinds
bindkey -v

eval "$(zoxide init zsh)"
[ -f ~/.dircolors ] && eval "$(dircolors ~/.dircolors)"

autoload -U compinit && compinit
zmodload -i zsh/complist

# Aliases
alias less='less -r'
alias rg='rg --color=always'
alias ls='ls --color=auto'
alias mv='mv -i'
alias lf='lfcd'
alias ll='ls -alFh'
alias tm='tmux'
alias lg='lazygit'
alias vim='nvim'
alias vi='vim' 
alias vr='nv-remote' # open file on remote instance

alias buku='buku --np'
alias xclip='xclip -selection clipboard'
