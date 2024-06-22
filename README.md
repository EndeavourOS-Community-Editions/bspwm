## unmaintained needs contributors or maintainer


# BSPWM Setup and Theme for EndeavourOS
**BSPWM EndeavorOS Community Edition**

## june 22 2024 added ISO install script to be used on welcome of current EndeavourOS isntaller:

https://raw.githubusercontent.com/EndeavourOS-Community-Editions/bspwm/main/setup_bspwm_isomode.bash

Read here on how to use it:
https://github.com/EndeavourOS-Community-Editions/.github/blob/main/profile/README.md

++ changelog
[june 22 20024]
* changed from lightdm to sdd (as of lightdm do not show BSPWM session)
* changed lxappearance to nwg-look

## To Install manually

    git clone https://github.com/EndeavourOS-Community-Editions/bspwm.git

    cd bspwm

    bash bspwm-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
        
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/bspwm/scripts
        
    yay -Syu --needed --noconfirm - < packages-repository.txt
    
## Get involved at our forum:
https://forum.endeavouros.com/c/desktop-environments/bspwm/75

## Tutorial for bspwm-wm settings:
- Background handled by nitrogen
- Gtk3 theme handled by nwg-look
- Filebrowser = Thunar
- Default Terminal-Emulator = xfce4-terminal
- Text-Editor = xed
- Application Launcher = Rofi


![bspwm](https://raw.githubusercontent.com/EndeavourOS-Community-Editions/bspwm/main/bspwm.png)
