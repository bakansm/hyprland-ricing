#!/bin/sh

# Check the current Wi-Fi status
wifi_status=$(nmcli -t -f WIFI general)
wifi_name=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2-)

# Toggle Wi-Fi based on its current status

toggle () {
    if [ "$wifi_status" == "enabled" ]; then
        nmcli radio wifi off
    else
        nmcli radio wifi on
    fi
}

case "$1" in
    "--status")
        echo "$wifi_status"
        ;;
    "--toggle")
        toggle
        ;;
    "--name")
        echo "$wifi_name"
        ;;
esac