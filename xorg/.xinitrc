mopidy & # Start up music
picom  & # Start compositor
sxhkd  & # Start hotkey daemon

# Set CAPS to ESC
setxkbmap -option caps:escape 
setxkbmap -model pc105 -layout us,gr -variant qwerty -option grp:lctrl_lwin_toggle

# Disable screen sleep
xset s off 
xset -dpms

exec i3 # Start window manager
