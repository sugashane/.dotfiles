#!/bin/sh
pasystray &
nitrogen --restore &
unclutter &
picom &
sh ~/.config/nfancurve/temp.sh -D
setxkbmap -option caps:escape
