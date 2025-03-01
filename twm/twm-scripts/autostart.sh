#!/bin/bash
sleep 3
polybar &
conky &
sleep 0.8
var0=$(xdotool search --name conky)
var1=$(xdotool search --name polybar)
var01=$(echo $var0 | awk '{print $1;}')
var11=$(echo $var1 | awk '{print $1;}')
#echo $var1 --- $var2
vdesk 0 $var01
vdesk 0 $var11
nm-applet &
