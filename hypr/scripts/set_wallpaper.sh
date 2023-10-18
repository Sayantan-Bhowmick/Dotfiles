#!/bin/bash

Directory="$HOME/Pictures/Wallpapers/"

random_file=$(find "$Directory" -type f | shuf --random-source="/dev/random" -n 1)

export SWWW_TRANSITION=any
export SWWW_TRANSITION_STEP=225
export SWWW_TRANSITION_DURATION=2.5
export SWWW_TRANSITION_FPS=60

swww img --resize fit --outputs eDP-1 "$random_file"
