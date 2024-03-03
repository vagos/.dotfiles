export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERMINAL=alacritty
export EDITOR=nvim
export BROWSER=xdg-open
export MANPAGER="nvim +Man!"
export TERM="xterm-256color"

export SD_ROOT=$HOME/bin
export FZF_DEFAULT_COMMAND='find .'
export SYSTEM_THEME="light"
export BROWSER_START_PAGE="vagos.lamprou.xyz"

export KEYTIMEOUT=1

# Directories
export XDG_MUSIC_DIR="$HOME/files/music"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DATA_HOME="$HOME/.local/share"

# Add stuff to PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin
export PATH=$PATH:$HOME/.gem/ruby/3.0.0/bin
export PATH=$PATH:/root/.gem/ruby/3.0.0/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/var/lib/snapd/snap/bin

# export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/lib64/jvm/java-11-openjdk-11/lib/server/libjvm.so:$LD_LIBRARY_PATH

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
