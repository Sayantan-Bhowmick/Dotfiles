#!/bin/bash

# Current brightness percentage
current_brightness_percentage=$(brightnessctl -m | cut -d, -f4)

# Restart the dunst notification daemon to prevent any potential issues
killall dunst
dunst &

# Create a notification using dunstify with brightness information
dunstify --appname "SYSTEM" --urgency "LOW" --hints int:value:$current_brightness_percentage --timeout "1500" "Brightness: $current_brightness_percentage"
