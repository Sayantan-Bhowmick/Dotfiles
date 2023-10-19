#!/bin/bash

# Configure transition settings for wallpaper changes
export SWWW_TRANSITION=any                 # Transition style: "any"
export SWWW_TRANSITION_STEP=225            # Transition step: 225 (controls speed or progress)
export SWWW_TRANSITION_DURATION=2.5        # Transition duration: 2.5 seconds
export SWWW_TRANSITION_FPS=60              # Frames per second (FPS) for the transition: 60

# Change the wallpaper using the 'swww img' command
sleep 1
swww img --resize fit --outputs eDP-1 $HOME/Pictures/Wallpapers/wallhaven-ymz61d_3840x2160.png
