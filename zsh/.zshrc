# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# autoload -U edit-command-line

# Sourcing
source "$HOME/.config/lf/lfcd.sh"

# Enable History
HITSTSIZE=100
SAVEHIST=100
HISTFILE=$HOME/.cache/zsh/history

autoload -U colors && colors

PROMPT_ICON='🐧'
[[ $(hostname) == "desktop" ]] && PROMPT_ICON='🦍'
[[ $(hostname) == "laptop" ]] && PROMPT_ICON='🐒'

PROMPT="%F{blue}[${PROMPT_ICON} %1~]$%f "

# Activate vim mode with <Escape>
set -o vi

# Some extra keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Enable ctr+L to clear
# bindkey -x '"\C-l": clear'

# Aliases
alias less='less -r'
alias rg='rg --color=always'

alias ls='ls --color=auto'
alias lf='lfcd'
alias ll='ls -l'
alias tm='tmux'
alias vim='nvim'
alias vi='vim'

eval "$(zoxide init zsh)"

# Plugins
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source /usr/share/zsh/plugins/zsh-sd/sd.plugin.zsh
