blueman-applet &
nm-applet &
noisetorch -i &
dwmblocks &
xrandr --output eDP --mode 1920x1080  --output HDMI-A-0 --mode 1920x1080 --above eDP &
picom --config .config/picom/picom.conf &
feh --bg-scale .config/dwm/grayworld.jpg &
dunst &
numlockx on &

xset s off
xset -dpms
xset s noblank

exec dwm
