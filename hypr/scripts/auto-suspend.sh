#!/bin/bash
swayidle -w \
timeout 1200 ' swaylock ' \
timeout 4000 ' hyprctl dispatch dpms off' \
timeout 120000 'systemctl suspend' \
resume ' hyprctl dispatch dpms on' \
before-sleep 'swaylock'
