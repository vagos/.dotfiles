# The following lines were added by compinstall
zstyle :compinstall filename '/home/vagozino/.zshrc'

autoload -Uz compinit
compinit

# Enable History

HITSTSIZE=100
SAVEHIST=100
HISTFILE=~/.cache/zsh/history

autoload -U colors && colors
PROMPT='%F{blue}[🦍 %1~]$%f '

# Exports
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export MANPAGER="nvim -c 'set ft=man' -"
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
# bindkey -x '"\C-l": clear'

# Aliases

alias ranger='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'
alias lr='ranger'
alias ls='ls --color=auto'
alias vim=nvim

# Add stuff to PATH
export PATH=$PATH:/home/vagozino/.local/bin:$HOME/.local/share/gem/ruby/2.7.0/bin:$HOME/Projects/Scripts

# Plugins
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
