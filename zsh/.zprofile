[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Exports
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export TASKRC=~/.config/task/taskrc

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim
export BROWSER=xdg-open
export MANPAGER="nvim +Man!"

export KEYTIMEOUT=1

# Add stuff to PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/files/scripts
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin
