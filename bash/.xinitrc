export XCURSOR_SIZE=24
export XCURSOR_THEME=breeze_cursors

blueman-applet &
nm-applet &
noisetorch -i &
dwmblocks &
# xrandr --output eDP --mode 1920x1080 --output HDMI-A-0 --mode 1680x1050  --rate 60 --above eDP &
xrandr \
  --output eDP --primary --mode 1920x1080 --gamma 0.7:0.7:0.7 --pos 0x365 \
  --output HDMI-A-0 --mode 3440x1440 --rate 60 --pos 1920x0 &
# xrandr --output eDP --mode 1920x1080 --gamma 0.7:0.7:0.7 &
picom --config .config/picom/picom.conf &
feh --no-fehbg --bg-fill .config/dwm/moonlight.jpg &
dunst &
numlockx on &

xset s off
xset -dpms
xset s noblank

exec dwm
