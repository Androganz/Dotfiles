#!/bin/bash

ARR=()
ARR+=("Normal")
ARR+=("Delay ")
ARR+=("Bordered")
ARR+=("Bordered no author")
ARR+=("Rounded")
ARR+=("Rounded no author")

date = 
screenshoot=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu =p "screenshoot")

if [ "$screenshoot" == "Normal" ]; then 
	scrot
	exit 
fi

if [ "$screenshoot" == "Delay" ]; then
        scrot ; notify-send "screenshot taken !" 
        exit
fi

if [ "$screenshoot" == "Bordered" ]; then
        scrot
        exit
fi

if [ "$screenshoot" == "Bordered no author" ]; then
        scrot
        exit
fi

if [ "$screenshoot" == "Rounded" ]; then
        scrot
        exit
fi

if [ "$screenshoot" == "Rounded no author" ]; then
        scrot
        exit
fi
#breaks
