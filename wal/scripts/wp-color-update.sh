#!/usr/bin/env bash

# Path to Waypaper config
CONFIG="$HOME/.config/waypaper/config.ini"

# Extract the current wallpaper path
WALLPAPER=$(grep '^wallpaper' "$CONFIG" | cut -d'=' -f2- | xargs)

# Expand ~ to $HOME
WALLPAPER="${WALLPAPER/#\~/$HOME}"

# Generate pywal colors
wal -i "$WALLPAPER" -q

# Reload Waybar
pkill -USR2 waybar
