#!/usr/bin/env bash

options=" Lock
 Suspend
 Logout
 Reboot
 Shutdown"

chosen=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu")

case "$chosen" in
    " Lock")
        hyprlock ;;
    " Suspend")
        systemctl suspend ;;
    " Logout")
        hyprctl dispatch exit ;;
    " Reboot")
        systemctl reboot ;;
    " Shutdown")
        systemctl poweroff ;;
esac
