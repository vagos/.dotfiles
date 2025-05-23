# Enable completion
autoload -Uz compinit
compinit

# Enable history
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

# Prompt
PROMPT_ICON='🍌'
PROMPT_ARROW='$'
PROMPT_COLOR='blue'

[[ $(hostname) == "desktop" ]] && PROMPT_ICON='🦍'
[[ $(hostname) == "laptop" ]] && PROMPT_ICON='🐒'
[[ $(hostname) == *mac* ]] && PROMPT_ICON='🍎'
[[ $(whoami) == "root" ]] && PROMPT_ICON='👺' && PROMPT_COLOR="white" && PROMPT_ARROW='#'

PROMPT="%F{$PROMPT_COLOR}[${PROMPT_ICON} %1~]$PROMPT_ARROW%f "

# Activate vim mode with <Escape>
set -o vi

# Some extra keybinds
bindkey -v

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

# Sourcing/Evaling
source <(fzf --zsh)
source "$HOME/.config/lf/lfcd.sh"
eval "$(zoxide init zsh)"
[ -f ~/.dircolors ] && eval "$(dircolors ~/.dircolors)"
