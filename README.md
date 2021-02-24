# bspwm-WM Setup and Theme for EndeavourOS
Community Edition 
***

## To Install manually

    git clone https://github.com/OdiousImp2604/bspwm.git

    cd sway

    bash sway-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
        
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/bpswm/scripts
        
    sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
    
    dbus-launch dconf load / < xed.dconf

