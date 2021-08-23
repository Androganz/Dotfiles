#!/bin/bash 

ARR=() 
ARR+=("Shutdown")
ARR+=("Suspend")
ARR+=("Reboot")

choice=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -width 20 -lines 4 -theme-str '#listview {scrollbar:false ;}' -theme-str '#window {border:3;}' -font "mplus Nerd Font 12" -location 5 -yoffset -28 -xoffset -10  -p "Powermenu")

if [ "$choice" = "Shutdown" ]; then 
	loginctl poweroff 
	exit 0 
fi

if [ "$choice" = "Suspend" ]; then
        loginctl suspend
        exit 0
fi

if [ "$choice" = "Reboot" ]; then
        loginctl reboot
        exit 0
fi
