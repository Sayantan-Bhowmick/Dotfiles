#!/bin/bash

# Define the multiplier to convert volume to percentage
multiplier=100

# Get the current volume using wpctl and extract the volume value
current_volume=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}')

# Calculate the current volume percentage by multiplying with the multiplier
current_volume_percentage=$(echo "$current_volume * $multiplier" | bc)

# Round the volume percentage to the nearest integer
display_volume=$(printf "%.0f" $current_volume_percentage)

# Restart the Dunst notification daemon to prevent any potential issues
killall dunst
dunst &

# Create a notification using dunstify with volume information
dunstify --appname "SYSTEM" --urgency "LOW" --hints int:value:$display_volume --timeout "1500" "Volume: $display_volume%"
