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
HITSTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/history
setopt hist_ignore_all_dups

autoload -U colors && colors

PROMPT_ICON='🍌'
[[ $(hostname) == "desktop" ]] && PROMPT_ICON='🦍'
[[ $(hostname) == "laptop" ]] && PROMPT_ICON='🐒'

PROMPT="%F{blue}[${PROMPT_ICON} %1~]$%f "

[[ $(whoami) == "root" ]] && PROMPT_ICON='👺' && PROMPT="%F{white}[${PROMPT_ICON} %1~]#%f "

# Activate vim mode with <Escape>
set -o vi

# Some extra keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey -v
# bindkey '^R' history-incremental-search-backward
# bindkey "\C-l" clear

# Aliases
alias less='less -r'
alias rg='rg --color=always'
alias ls='ls --color=auto'
alias mv='mv -i'
alias lf='lfcd'
alias ll='ls -alFh'
alias tm='tmux'
alias vim='nvim'
alias vi='vim' 
alias vr='nv-remote' # open file on remote instance

eval "$(zoxide init zsh)"

# Plugins
source /usr/share/fzf/key-bindings.zsh
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source /usr/share/zsh/plugins/zsh-sd/sd.plugin.zsh
