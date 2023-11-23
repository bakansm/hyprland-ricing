#!/bin/sh

# eww open workspace-bar -c ~/.config/eww/ & 
hyprctl dispatch workspace "$1"
# sleep 1.5
# eww close workspace-bar