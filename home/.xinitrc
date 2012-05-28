#!/usr/bin/env bash
gnome-power-manager &
gnome-settings-daemon &
nm-applet &
xscreensaver -nosplash &
export XMODIFIERS=@im=scim
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
export XIM_PROGRAM="scim -d"
scim -d &
redshift -l 48.5:02.20 -t 5700:3600 -g 0.8 &
awsetbg -f .wallpaper/type_b_1920x1200.png &
exec awesome
