mopidy & # music
picom  & # compositor
sxhkd  & # hotkey daemon
dunst  & # notifications

setxkbmap -option caps:escape 
setxkbmap -model pc105 -layout us,gr -variant qwerty -option grp:lctrl_lwin_toggle

# Disable screen sleep
xset s off 
xset -dpms

exec i3 # Start window manager
