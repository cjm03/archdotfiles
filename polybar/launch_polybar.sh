killall -q polybar
if type "xrandr"; then
#   MONITOR=DP-2 polybar --reload toph &
    MONITOR=DP-0 polybar --reload toph &
#    for m in $(xrandr --query | grep -w "connected" | cut -d" " -f1); do
#        MONITOR=$m polybar --reload toph &
#    done
else
    polybar --reload toph &
fi
