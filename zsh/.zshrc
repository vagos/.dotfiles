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
PROMPT='%F{blue}[🦍 %1~]$%f '

# Activate vim mode with <Escape>
set -o vi

# Some extra keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Enable ctr+L to clear
# bindkey -x '"\C-l": clear'

# Aliases
alias ls='ls --color=auto'
alias lf='lfcd'

# Plugins
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
