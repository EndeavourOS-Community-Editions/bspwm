# bspwm-WM Setup and Theme for EndeavourOS
Community Edition 
***

## To Install manually

    git clone https://github.com/OdiousImp2604/bspwm.git

    cd bspwm

    bash bspwm-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
        
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/bpswm/scripts
        
    sudo yay -Syu --needed --noconfirm - < packages-repository.txt
    
    dbus-launch dconf load / < xed.dconf

