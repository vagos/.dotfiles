export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERMINAL=alacritty
export EDITOR=nvim
export BROWSER=xdg-open
export MANPAGER="nvim +Man!"
export TERM="screen-256color"

export SD_ROOT=$HOME/bin
export FZF_DEFAULT_COMMAND='find .'
export SYSTEM_THEME="dark"
export BROWSER_START_PAGE="vagos.lamprou.xyz"
export LS_COLORS='di=01;34'
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

open() 
{
    ( nohup xdg-open "$@" &>/dev/null & )
}

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
export PATH=$PATH:$HOME/.npmg/bin
export PATH=$PATH:/opt/cuda/bin
export PATH=$PATH:$HOME/.cache/yay/cuda-9.0/pkg/cuda-9.0/opt/cuda-9.0/bin

export MANPATH="${MANPATH-$(manpath)}:$HOME/.npmg/share/man"

# export LD_LIBRARY_PATH="/usr/lib64:$LD_LIBRARY_PATH"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/extras/CUPTI/lib64
# export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/lib64/jvm/java-11-openjdk-11/lib/server/libjvm.so:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH="/home/vagozino/.cache/yay/cuda-9.0/pkg/cuda-9.0/opt/cuda-9.0/lib64":$LD_LIBRARY_PATH

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
