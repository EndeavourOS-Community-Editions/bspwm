# BSPWM Setup and Theme for EndeavourOS
**BSPWM EndeavorOS Community Edition**


## To Install manually

    git clone https://github.com/EndeavourOS-Community-Editions/bspwm.git

    cd bspwm

    bash bspwm-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
        
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/bspwm/scripts
        
    yay -Syu --needed --noconfirm - < packages-repository.txt
    

## Tutorial for bspwm-wm settings:
- Background handled by nitrogen
- Gtk3 theme handled by lxappearance-gtk3
- Filebrowser = Thunar
- Default Terminal-Emulator = xfce4-terminal
- Text-Editor = xed
- Application Launcher = Rofi

## Get involved in our [forums](https://forum.endeavouros.com/c/desktop-environments/bspwm/75)

<br>

![bspwm](https://raw.githubusercontent.com/EndeavourOS-Community-Editions/bspwm/main/bspwm.png)
(Image from EnduavorOS forums!)
