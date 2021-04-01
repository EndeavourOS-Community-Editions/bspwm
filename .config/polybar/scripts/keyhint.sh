#!/bin/sh
yad --title="EndeavourOS bspwm keybindings:"\
	--no-buttons\
	--geometry=400x345-15-400\
	--list\
	--column=key:\
	--column=description:\
	--column=command:\
	"ESC" "close this app" ""\
	"=" "modkey" "(set mod Mod4)"\
	"+enter" "open a terminal"	""\
	"+w" "open Browser" ""\
	"+n" "open Filebrowser" ""\
	"+d" "app menu" "(rofi)"\
	"+Shift+q" "close focused app"\
	"(kill)" "Print-key" "screenshot" "(scrot)"\
	"+Shift+e" "logout menu" "(rofi)"\
	"+F1" "open keybinding helper" "full list"\
	"+Alt+r" "reload bspwm" "bpsc restart"\
	"+ESC"	"reload sxhkd" "pkill -USR1 -x sxhkd"
  
