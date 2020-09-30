#!/bin/sh

# Start the volume tray icon
pasystray &

# Start the wallpaper application
nitrogen --restore &

# Remove mouse when idle
unclutter &

# Start the compositor
picom &

# Start the notification daemon
dunst &

# Start nvidia fan curve script
sh ~/.config/nfancurve/temp.sh -D

# Remap caps lock to escape
setxkbmap -option caps:escape

# Increase key speed via a rate change
xset r rate 300 50

# Start the window manager. This must be at the end of this script
exec qtile
