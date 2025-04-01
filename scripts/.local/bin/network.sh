#!/bin/sh

networkstatus=$(nmcli -t -f STATE g)

if [ "$networkstatus" = "connected" ]; then
  connection_info=$(nmcli -t -f DEVICE,TYPE connection show --active)

  if echo "$connection_info" | grep -q ":802-11-wireless"; then
    # interface=$(echo "$connection_info" | grep ":802-11-wireless" | cut -d: -f1)
    ssid=$(nmcli -t -f SSID device wifi show | sed 's/SSID: //')
    echo "$ssid"
  else
    echo "ETH"
  fi
fi
