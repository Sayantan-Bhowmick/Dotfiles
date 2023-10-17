#!/bin/bash

# Directory to select a file from
directory="$HOME/Pictures/Wallpapers/"

# Get a list of files in the directory
files=("$directory"/*)

# Generate a random index
random_index=$((RANDOM % ${#files[@]}))

# Get the randomly selected file
random_file="${files[$random_index]}"

# Get the absolute path of the random file
absolute_path=$(realpath "$random_file")

export SWWW_TRANSITION=grow
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=150
export SWWW_TRANSITION_POS=center

swww img --outputs eDP-1 $absolute_path
