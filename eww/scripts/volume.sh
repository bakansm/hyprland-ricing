#!/bin/sh
vol_raw=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -oE 'Volume: ([0-9]+\.[0-9]+)' | awk '{print $2}')
vol=$(echo "$vol_raw * 100" | bc)
echo "$vol"