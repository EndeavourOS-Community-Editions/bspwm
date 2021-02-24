if [ -f /tmp/new_username.txt ]
then
    NEW_USER=$(cat /tmp/new_username.txt)
else
    NEW_USER=$(cat /tmp/$chroot_path/etc/passwd | grep "/home" |cut -d: -f1 |head -1)
fi

git clone https://github.com/OdiousImp2604/bspwm.git
cd bspwm
cp -R .config /home/$NEW_USER/                                               
chmod -R +x /home/$NEW_USER/.config/bspwm/scripts
cp .gtkrc-2.0 /home/$NEW_USER/
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.config
chown $NEW_USER:$NEW_USER /home/$NEW_USER/.gtkrc-2.0
cd ..
rm -rf bspwm
