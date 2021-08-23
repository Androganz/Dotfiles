#!/bin/sh 

rofi -show drun -width 30 \
		 -lines 8 \
		 -font "mplus Nerd Font 12" \
		 -show-icons \
		 -fake-transparency \
		 -theme-str '#window {border:3;}' \
		 -theme-str '#window {border-radius: 10px;}'\
		 -theme-str '#listview {scrollbar:false ;}'\
		 -theme-str '#element-icon {size:2.3ch;}'\

