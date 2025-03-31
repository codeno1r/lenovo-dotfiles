xrandr --output eDP --mode 1920x1080  --output HDMI-A-0 --mode 1920x1080 --above eDP &
picom --config .config/picom/picom.conf &
feh --bg-scale .config/dwm/isolated-house.jpg &
dunst &

dwmblocks &
exec dwm
