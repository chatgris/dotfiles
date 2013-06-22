#!/usr/bin/env bash
gnome-power-manager &
gnome-settings-daemon &
nm-applet &
xscreensaver -nosplash &
export XMODIFIERS=@im=uim
export GTK_IM_MODULE=uim
export QT_IM_MODULE=uim
export XIM_PROGRAM="uim-xim"
uim-xim &
redshift -l 35.7:139.8 -t 5700:3600 -g 0.8 &
awsetbg -f .wallpaper/type_b_1920x1200.png &
exec awesome
