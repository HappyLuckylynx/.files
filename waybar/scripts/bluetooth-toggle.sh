#!/bin/bash

STATE=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ "$STATE" == "yes" ]]; then
    bluetoothctl power off
else
    bluetoothctl power on
fi

# is fürs Icon Updaten da sonst gspiat si waybar ned
pkill -RTMIN+8 waybar
