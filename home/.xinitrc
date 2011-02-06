#!/usr/bin/env bash
#open power manager
gnome-power-manager &
#open net work manager
nm-applet &
#open auto update
update-notifier &
export XMODIFIERS=@im=scim
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
export XIM_PROGRAM="scim -d"
scim -d &
gtk-redshift -l 48.5:02.20 -t 5700:3600 -g 0.8 -m vidmode -v &
#~/bin/awesome-clock.sh &
xset b off
exec awesome
