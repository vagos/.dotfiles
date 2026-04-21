mopidy        & # music
picom         & # compositor
sxhkd         & # hotkey daemon
dunst         & # notifications
xbanish       & # hide mouse cursor
arbtt-capture & # time tracking
rescrobbled   & # music scrobbling
mpris-proxy   & # bluetooth headset gestures
xscreensaver --no-splash & # screen saver
lightson+ -d 5 & # screen saver supressor

setxkbmap -option caps:escape 
setxkbmap -model pc105 -layout us,gr -variant qwerty -option grp:lctrl_lwin_toggle

# Disable screen sleep
xset s off 
xset -dpms

dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=secrets

exec i3 # Start window manager
