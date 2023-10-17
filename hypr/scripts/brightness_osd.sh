#!/bin/bash

# Get the current brightness using brightnessctl
current_brightness=$(brightnessctl get)

# Calculate the current brightness percentage
current_brightness_percentage=$((current_brightness / 15))

# Restart the Dunst notification daemon to prevent any potential issues
killall dunst
dunst &

# Create a notification using dunstify with brightness information
dunstify --appname "SYSTEM" --urgency "LOW" --hints int:value:$current_brightness_percentage --timeout "1500" "Brightness: $current_brightness_percentage%"
