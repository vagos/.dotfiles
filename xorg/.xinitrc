mopidy    & # music
picom     & # compositor
sxhkd     & # hotkey daemon
dunst     & # notifications
xbanish   & # hide mouse cursor

setxkbmap -option caps:escape 
setxkbmap -model pc105 -layout us,gr -variant qwerty -option grp:lctrl_lwin_toggle

# Disable screen sleep
xset s off 
xset -dpms

redshift -l 40.5147:21.6786 -P &

dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=secrets

exec i3 # Start window manager
