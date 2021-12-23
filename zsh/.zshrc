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
HISTFILE=$HOME/cache/zsh/history

autoload -U colors && colors
PROMPT='%F{blue}[🦍 %1~]$%f '

# Exports
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export MANPAGER="nvim +Man!"
export TASKRC=~/.config/task/taskrc

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim

# Activate vim mode with <Escape>
set -o vi

export KEYTIMEOUT=1

# Some extra keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Enable ctr+L to clear
# bindkey -x '"\C-l": clear'

# Aliases

# alias ranger='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'
# alias lr='ranger'
alias ls='ls --color=auto'
alias lf='lfcd'

# Add stuff to PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/gem/ruby/2.7.0/bin:$HOME/Projects/Scripts

# Plugins
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
