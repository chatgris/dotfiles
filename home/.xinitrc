#!/usr/bin/env bash
gnome-power-manager &
nm-applet &
xscreensaver -nosplash &
export XMODIFIERS=@im=scim
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
export XIM_PROGRAM="scim -d"
scim -d &
gtk-redshift -l 48.5:02.20 -t 5700:3600 -g 0.8 -m vidmode -v &
exec awesome
