#!/bin/sh

nordstatus=$(nordlayer status --silent | grep VPN | sed s/"VPN: "//)

if [ "$nordstatus" = "Connected" ]; then
  printf '{"text": "󰳌", "alt": "VPN Connected", "tooltip": "VPN is active", "class": "connected"}'
else
  printf '{"text": "󰯄", "alt": "VPN Disconnected", "tooltip": "VPN is off", "class": "disconnected"}'
fi
