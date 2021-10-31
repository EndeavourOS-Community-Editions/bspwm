#!/bin/bash

### VARIABLES

POLL_INTERVAL=60     # seconds at which to check battery level
LOW_BAT=33           # lesser than this is considered low battery

# If BAT0 doesn't work for you, check available devices with command below
#
#   $ ls -1 /sys/class/power_supply/
#
BAT_PATH=/sys/class/power_supply/BAT0
BAT_STAT=$BAT_PATH/status

if [[ -f $BAT_PATH/charge_full ]]
then
    BAT_FULL=$BAT_PATH/charge_full
    BAT_NOW=$BAT_PATH/charge_now
elif [[ -f $BAT_PATH/energy_full ]]
then
    BAT_FULL=$BAT_PATH/energy_full
    BAT_NOW=$BAT_PATH/energy_now
else
    exit
fi

### END OF VARIABLES

kill_running() {     # stop older instances to not get multiple notifications
   local mypid=$$

   declare pids=($(pgrep -f ${0##*/}))

   for pid in ${pids[@]/$mypid/}; do
      kill $pid
      sleep 1
   done
}

# Run only if battery is detected
if ls -1qA /sys/class/power_supply/ | grep -q .
then 

    kill_running

    while true
    do
        bf=$(cat $BAT_FULL)
        bn=$(cat $BAT_NOW)
        bs=$(cat $BAT_STAT)

        bat_percent=$(( 100 * $bn / $bf ))

        if [[ $bat_percent -lt $LOW_BAT && "$bs" = "Discharging" ]]
        then
            notify-send --urgency=critical "$bat_percent% : Low Battery!"
        fi
        sleep $POLL_INTERVAL
    done
fi
