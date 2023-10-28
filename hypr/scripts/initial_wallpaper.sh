#!/bin/bash

# Set the directory path to your wallpaper images
Directory="$HOME/.config/hypr/wallpapers/"

# Find and select a random image file from the specified directory
random_file=$(find "$Directory" -type f | shuf --random-source="/dev/random" -n 1)

# Configure transition settings for wallpaper changes
export SWWW_TRANSITION=any                 # Transition style: "any"
export SWWW_TRANSITION_STEP=225            # Transition step: 225 (controls speed or progress)
export SWWW_TRANSITION_DURATION=2.5        # Transition duration: 2.5 seconds
export SWWW_TRANSITION_FPS=60              # Frames per second (FPS) for the transition: 60

# Change the wallpaper using the 'swww img' command
sleep 1
swww img --resize fit --outputs eDP-1 "$random_file"