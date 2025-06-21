#!/bin/bash

# Take screenshot
hyprshot -m region -o /tmp

# Wait for hyprshot to write the file
sleep 0.5 # wait briefly to ensure file is saved

# Find the latest hyprshot file
latest_img=$(ls -t /tmp | grep 'hyprshot' | head -n1)
img_path="/tmp/$latest_img"

# Check if file is valid
if [ -f "$img_path" ] && file "$img_path" | grep -q 'PNG image data'; then
  ksnip "$img_path"
else
  notify-send "Hyprshot" "Screenshot failed or file unreadable"
fi
