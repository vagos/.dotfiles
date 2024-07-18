# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
# End of lines added by compinstall
# autoload -U edit-command-line

# Plugins
source /usr/share/fzf/key-bindings.zsh
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Sourcing
# source /usr/share/nvm/init-nvm.sh
source "$HOME/.config/lf/lfcd.sh"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Completions
SD="/nix/store/6c9jz8vkdmyn1dz4wj0dxrrpc6acgcjg-user-environment/share/zsh/site-functions"
fpath=($SD $fpath)

# Enable History
HITSTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/history
# setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_VERIFY

# autoload -U colors && colors

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

eval "$(zoxide init zsh)"
eval "$(dircolors ~/.dircolors)"

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

# Behavioral Aliaes
alias buku='buku --np'
alias xclip='xclip -selection clipboard'
