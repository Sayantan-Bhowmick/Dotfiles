#!/bin/bash

# Decrease the brightness by 75 (delta) using brightnessctl
brightnessctl --device intel_backlight --class backlight --min-value=75 set 75-
