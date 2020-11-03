#! /bin/env bash

ok=1

function check_command {
	if ! command -v $1 &> /dev/null
	then
	    echo -e "\e[91m$1\e[39m could not be found."
	    ok=0
	else
	    echo "$1 ... OK"
	fi
}

declare -a requirements=("bspwm" "bspc" "sxhkd" "git" "xsecurelock" "unclutter" "feh" "notify-send" "kitty" "rofi" "flameshot" "light" "arandr" "polybar" "dunst" "compton" "nm-applet" "albert" "wmname")

for requirement in ${requirements[@]}; do
	check_command $requirement
done

if [ $ok -eq 1 ]; then
	echo -e "\e[32mAll dependencies ok\e[39m"
else
	echo -e "\e[91mOne or more dependencies are missing!\e[39m"
fi
