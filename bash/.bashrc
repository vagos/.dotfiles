# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1='\[\e[34m\][🦍 \W]$\[\e[37m\] '

# Exports
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export MANPAGER="nvim -c 'set ft=man' -"
export TASKRC=~/.config/task/taskrc
#export PAGER="nvim -c 'set ft=man' -"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim

# Activate vim mode with <Escape>
set -o vi
# Enable ctr+L to clear
bind -x '"\C-l": clear'

# Aliases

alias ranger='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'
alias lr='ranger'
alias ls='ls --color=auto'
alias vim=nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Add stuff to PATH
export PATH=$PATH:/home/vagozino/.local/bin:$HOME/.local/share/gem/ruby/2.7.0/bin:$HOME/Projects/Scripts
