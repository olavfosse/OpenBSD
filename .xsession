export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc
xrdb -merge $HOME/.Xresources
# lock display period of inactivity
xidle &
# disable beep
xset b off
# Enable TrackPoint scrolling on ThinkPad
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 
# use caps as ctrl
setxkbmap no -option ctrl:nocaps
# Increase TrackPoint acceleration
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.2
exec cwm
