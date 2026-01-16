#!/bin/bash
STATE=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ "$STATE" == "yes" ]]; then
    blueman-manager
fi

#hab i drinnen sonst bugged des bluetooth ausmachn im blueman manager
