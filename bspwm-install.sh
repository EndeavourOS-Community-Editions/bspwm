#!/bin/bash

# Easy setup for testing
mkdir $HOME/.local/share/fonts
cp -R IosevkaTermNerdFontComplete.ttf $HOME/.local/share/fonts
cp -R .config/* $HOME/.config/
chmod -R +x $HOME/.config/bspwm
chmod -R +x $HOME/.config/polybar/scripts
sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
sudo fc-cache -f -v
dbus-launch dconf load / < xed.dconf
