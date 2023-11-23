#!/bin/sh

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	eww daemon
	sleep 1
fi

NB_MONITORS=$(hyprctl monitors -j | jq length)
if [ "$NB_MONITORS" -eq "2" ]; then
    eww open-many --toggle \
        background background-external\
        battery battery-external\
        clock clock-external\
        wifi wifi-external\
        bluetooth bluetooth-external\
        -c $HOME/.config/eww 
else 
    eww open-many --toggle \
        background background-external\
        battery battery-external\
        clock clock-external\
        wifi wifi-external\
        bluetooth bluetooth-external\
        -c $HOME/.config/eww 
fi

	
