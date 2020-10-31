#! /bin/env bash

function check_command {
	if ! command -v $1 &> /dev/null
	then
	    echo -e "\e[91m$1\e[39m could not be found."
	else
	    echo -e "\e[32m$1\e[39m OK"
	fi
}

declare -a requirements=("bspwm" "bspc" "sxhkd" "git" "xsecurelock" "unclutter" "feh" "notify-send" "kitty" "rofi" "flameshot" "light" "arandr" "polybar" "dunst")

for requirement in ${requirements[@]}; do
	check_command $requirement
done

echo -e "\e[32mAll dependencies ok\e[39m"
