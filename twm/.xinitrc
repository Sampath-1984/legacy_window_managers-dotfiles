#!/bin/sh
test -f $HOME/.Xresources && xrdb -merge $HOME/.Xresources
xsetroot -bitmap /home/sampath/twm-scripts/check.xbm -cursor_name left_ptr
xset b off
#export GTK_THEME= "Blackout" &
xbindkeys &
/usr/lib/notification-daemon-1.0/notification-daemon --class Notification-d &
playerctld daemon &
/home/sampath/twm-scripts/prestart.sh &
/home/sampath/twm-scripts/autostart.sh &
#blugon -o -S 3400 &
exec twm 
#exec 9wm
