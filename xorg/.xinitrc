#ibus-daemon &    # Input method
mopidy &         # Start up music
# sudo light -S 50 # Set brightness
picom &          # Start compositor

setxkbmap -option caps:escape # Set CAPS to ESC

# xflux -l 38.2 -g 21.7 # Start xflux

xset s off # Disable screen sleep
xset -dpms

exec i3 # Start i3-wm
