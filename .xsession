export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc
xrdb -merge $HOME/.Xresources
xsetroot -solid dimgray
# lock display period of inactivity
xidle &
# xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &
# disable beep
xset b off
# Enable TrackPoint scrolling on ThinkPad
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 
# use caps as ctrl
setxkbmap no -option ctrl:nocaps
exec cwm
