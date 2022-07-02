#!/usr/bin/env bash
#while true; do
#        date '+ %a. %d %b. %R ' > /tmp/CurTime.tmp
#        sleep 60s
#done &

while true; do

	NET=$(ip route | awk '/default/ { print substr($5,1,1) }')
	BRIGHT=$(printf "%.0f%s\n" "$(xbacklight)")
	#DAT=$(< /tmp/CurTime.tmp)
	DAT=$(date '+ %a. %d %b. %R ')
	BAT=$(acpi | awk '{print $4}' | sed s/,//)
	VOL=$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')

        xsetroot -name " $NET  |   $BAT  |   $BRIGHT%  |   $VOL%  |  $DAT "
        sleep 1s
done &
