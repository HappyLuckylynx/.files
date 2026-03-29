#!/bin/bash

# config files für reference
# braucht waypaper für current wallpaper und hyprlock für locken halt 
WAYPAPER_CONF="$HOME/.config/waypaper/config.ini"
HYPRLOCK_CONF="$HOME/.config/hypr/hyprlock.conf"

# holt sich wallpaper name 
RAW_WALLPAPER=$(grep -R "wallpaper" "$WAYPAPER_CONF" | head -n1 | cut -d '=' -f2- | xargs)

# macht ~ zu nem absolute path
WALLPAPER="${RAW_WALLPAPER/#\~/$HOME}"

# Update path entries
sed -i "s|^[[:space:]]*path *=.*|path = $WALLPAPER|g" "$HYPRLOCK_CONF"

# am schluss hyprlock
hyprlock