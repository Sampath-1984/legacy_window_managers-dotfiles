#!/bin/sh
#xbindkeys &
#xcompmgr &
#plank &
#exec ratpoison
test -f $HOME/.Xresources && xrdb -merge $HOME/.Xresources
xsetroot -solid \#400040 -cursor_name left_ptr
xset b off
export GTK_THEME= "Blackout" &
#( /usr/bin/evilwm -snap 10 >/dev/null 2>&1 &)
xbindkeys &
( evilwm --fn "-misc-dejavu sans mono-medium-r-normal--0-80-0-0-m-0-ascii-0" ) &
/usr/lib/notification-daemon-1.0/notification-daemon --class Notification-d &
dropbox &
#stalonetray & nm-applet & dropbox &
xosview &
xplanet -background 0x400040 -projection rectangular &
ipager -c ~/.ipager/custom.conf &
exec xclock -digital -strftime "%b %d %I:%M %p"
