#!/bin/bash

# Set the directory path to your wallpaper images
Directory="$HOME/.config/hypr/wallpapers/"

# Find and select a random image file from the specified directory
random_file=$(find "$Directory" -type f | shuf --random-source="/dev/random" -n 1)

# Change the wallpaper using the 'swww img' command
sleep 1
swww img --resize fit --outputs eDP-1 "$random_file"
