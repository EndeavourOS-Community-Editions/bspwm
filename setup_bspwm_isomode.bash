#!/usr/bin/env bash
username="$1"
git clone https://github.com/EndeavourOS-Community-Editions/bspwm.git

cd bspwm
mkdir -p /home/$username/.local/share/fonts
cp IosevkaTermNerdFontComplete.ttf /home/$username/.local/share/fonts/
cp -R .config /home/$username/                                               
cp .gtkrc-2.0 /home/$username/
chown -R $username:$username /home/$username/.local
chown -R $username:$username /home/$username/.config
chown $username:$username /home/$username/.gtkrc-2.0
chmod -R +x /home/$username/.config/bspwm/
chmod -R +x /home/$username/.config/sxhkd/
chmod -R +x /home/$username/.config/polybar/scripts
cd ..
rm -rf bspwm
wget https://raw.githubusercontent.com/EndeavourOS-Community-Editions/bspwm/main/packages-repository.txt
pacman -S --needed --noconfirm - < packages-repository.txt
rm packages-repository.txt
systemctl enable lightdm
