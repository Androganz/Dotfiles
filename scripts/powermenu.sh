#!/bin/bash

ARR=()
ARR+=("Power-off")
ARR+=("Reboot")
ARR+=("Zzz")

powermenu=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -l 4 -width 25 -location 5 -padding 10 -p "Powermenu")

if [ "powermenu" == "Power-off" ]; then
        sudo poweroff
        exit
fi

if [ "powermenu" == "Reboot" ]; then
        sudo reboot
        exit
fi

if [ "powermenu" == "Zzz" ]; then
        sudo zzz
        exit
fi
