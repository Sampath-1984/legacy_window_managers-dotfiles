#!/bin/bash

sys-bat-mon(){
local bat_l="$(cat /sys/class/power_supply/BAT1/capacity)"
local bat_s="$(cat /sys/class/power_supply/BAT1/status)"
	if [[ "$bat_l" < 16 ]] && [ "$bat_s" = Discharging ];
		then
		xmessage "Battery Low. Plug in your PC now." -buttons ""$bat_l"% remaining" -fg white -bg red -timeout 5
#		echo $bat_l $bat_s
#	elif [[ "$bat_l" = 100 ]] && [ "$bat_s" = Discharging ];
#		then 
#		xmessage "Charger Disconnected" -buttons X -fg white -bg black -timeout 1
	else
		return 0
	fi
}

while :
do
	sys-bat-mon
	sleep 5
done
