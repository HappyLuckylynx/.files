#!/bin/bash

INTERFACE="wlan0"


STATE=$(nmcli -t -f DEVICE,STATE dev | grep "^$INTERFACE" | cut -d: -f2)

if [[ "$STATE" == "connected" ]]; then
    # holt sich de ssid
    SSID=$(nmcli -t -f NAME,DEVICE connection show --active | grep ":$INTERFACE" | cut -d: -f1)
    # fürs waybar module dann (habs aba ausglassen weil ned so geil
    echo "󰤨 "
else
    # fürs waybar module dann
    echo "󰤭 NOT CONNECTED"
fi
