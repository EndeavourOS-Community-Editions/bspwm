#!/bin/env bash

# Options for powermenu
lock=" Lock"
logout=" Logout"
shutdown=" Shutdown"
reboot=" Reboot"
suspend="鈴 Sleep"

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$shutdown
$reboot
$suspend" | rofi -dmenu\
                 -i\
                 -p "Power"\
                 -config "~/.config/rofi/config.rasi"\
                 -font "Iosevka Nerd Font 12"\
                 -width "15"\
                 -lines 5\
                 -line-margin 3\
                 -line-padding 10\
                 -scrollbar-width "0"\
                 -location 1\
                 -xoffset 10\
                 -yoffset 40 )

# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    i3lock-fancy
elif [ "$selected_option" == "$logout" ]
then
    bspc quit
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$suspend" ]
then
    amixer set Master mute
    systemctl suspend
else
    echo "No match"
fi
