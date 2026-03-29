#!/bin/bash

if bluetoothctl show 2>/dev/null | grep -q "Powered: yes"; then #sucht nach dem "Powered: entry"
    echo "󰂯"   # Bluetooth is ON
else
    echo "󰂲"   # Bluetooth is OFF
fi
