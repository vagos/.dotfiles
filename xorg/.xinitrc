mopidy & # Start up music
picom  & # Start compositor
sxhkd  &

setxkbmap -option caps:escape # Set CAPS to ESC

# Disable screen sleep
xset s off 
xset -dpms

exec i3 # Start window manager
