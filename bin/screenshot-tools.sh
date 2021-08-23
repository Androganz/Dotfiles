#!/bin/bash 

ARR=() 
ARR+=("flameshot-bordered")
ARR+=("flameshot-bordered-no-author")
ARR+=("flameshot-rounded")
ARR+=("flameshot-rounded-no-author")

choice=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -width 25 \
	-lines 6 \
	-theme-str '#listview {scrollbar:false ;}' \
	-theme-str '#window {border:3;}' \
	-font "mplus Nerd Font 12" \
        -p "Screenshoots")

if [ "$choice" = "flameshot-bordered" ]; then 
	exec ~/.local/bin/flameshot/flameshot-bordered  
	exit 0 
fi

if [ "$choice" = "flameshot-bordered-no-author" ]; then
        exec ~/.local/bin/flameshot/flameshot-bordered-noname
        exit 0
fi

if [ "$choice" = "flameshot-rounded" ]; then
        exec ~/.local/bin/flameshot/flameshot-rounded
        exit 0
fi

if [ "$choice" = "flameshot-rounded-no-author" ]; then
        exec ~/.local/bin/flameshot/flameshot-rounded-noname
        exit 0
fi
