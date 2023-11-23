#!/bin/sh

# Check the current Bluetooth status
bluetooth_status=$(bluetoothctl show | grep "Powered: " | cut -d: -f2-)
bluetooth_name=$(bluetoothctl info | grep "Name: " | cut -d: -f2-)
# Toggle Bluetooth based on its current status
toggle () {
    if [[ "$bluetooth_status" == " yes" ]]; then
        bluetoothctl power off
    else
        bluetoothctl power on
    fi
}

case "$1" in
    "--status")
        echo "$bluetooth_status"
        ;;
    "--toggle")
        toggle
        ;;
    "--name")
        echo "$bluetooth_name"
        ;;
esac