mopidy &         # Start up music
picom &          # Start compositor

setxkbmap -option caps:escape # Set CAPS to ESC

xset s off # Disable screen sleep
xset -dpms

exec i3 # Start window manager
