#!/bin/bash
sudo pacman -S abstract-xfce-theme --noconfirm
sudo pacman -S andrea-xfce-theme --noconfirm
sudo pacman -S archlinux-xfce-theme --noconfirm
sudo pacman -S arco-xfce-theme --noconfirm
sudo pacman -S artwork-xfce-theme --noconfirm
sudo pacman -S astronaut-xfce-theme --noconfirm
sudo pacman -S beach-xfce-theme --noconfirm
sudo pacman -S biker-xfce-theme --noconfirm
sudo pacman -S biohazard-xfce-theme --noconfirm
sudo pacman -S citysunset-xfce-theme --noconfirm
sudo pacman -S cutecat-xfce-theme --noconfirm
sudo pacman -S citylights-xfce-theme --noconfirm
sudo pacman -S cybercity-xfce-theme --noconfirm
sudo pacman -S cybervr-xfce-theme --noconfirm
sudo pacman -S dawn-xfce-theme --noconfirm
sudo pacman -S delicate-xfce-theme --noconfirm
sudo pacman -S destruction-xfce-theme --noconfirm
sudo pacman -S default-xfce-theme --noconfirm
sudo pacman -S eldenring-xfce-theme --noconfirm
sudo pacman -S eveningmoon-xfce-theme --noconfirm
sudo pacman -S emilia-xfce-theme --noconfirm
sudo pacman -S flowers-xfce-theme --noconfirm
sudo pacman -S fractal-xfce-theme --noconfirm
sudo pacman -S genshinimpact-xfce-theme --noconfirm
sudo pacman -S girl-xfce-theme --noconfirm
sudo pacman -S goldcoast-xfce-theme --noconfirm
sudo pacman -S grandcanion-xfce-theme --noconfirm
sudo pacman -S headphones-xfce-theme --noconfirm
sudo pacman -S japan-xfce-theme --noconfirm
sudo pacman -S kakashicyberpunk-xfce-theme --noconfirm
sudo pacman -S knights-xfce-theme --noconfirm
sudo pacman -S lake-sunrise-xfce-theme --noconfirm
sudo pacman -S lake-xfce-theme --noconfirm
sudo pacman -S landscape-xfce-theme --noconfirm
sudo pacman -S lensflare-xfce-theme --noconfirm
sudo pacman -S marta-xfce-theme --noconfirm
sudo pacman -S maya-xfce-theme --noconfirm
sudo pacman -S mangrove-xfce-theme --noconfirm
sudo pacman -S mountainlake-xfce-theme --noconfirm
sudo pacman -S mountainsunset-xfce-theme --noconfirm
sudo pacman -S mountain-xfce-theme --noconfirm
sudo pacman -S moonlight-xfce-theme --noconfirm
sudo pacman -S northern-lights-xfce-theme --noconfirm
sudo pacman -S operahouse-xfce-theme --noconfirm
sudo pacman -S neon-xfce-theme --noconfirm
sudo pacman -S panorama-xfce-theme --noconfirm
sudo pacman -S planet-xfce-theme --noconfirm
sudo pacman -S porsche-xfce-theme --noconfirm
sudo pacman -S pinkfloyed-xfce-theme --noconfirm
sudo pacman -S phoenix-xfce-theme --noconfirm
sudo pacman -S red-moon-xfce-theme --noconfirm
sudo pacman -S space-nebula-theme --noconfirm
sudo pacman -S sunrise-xfce-theme --noconfirm
sudo pacman -S surfgirl-xfce-theme --noconfirm
sudo pacman -S thunder-xfce-theme --noconfirm
sudo pacman -S technology-xfce-theme --noconfirm
sudo pacman -S tokionight-xfce-theme --noconfirm
sudo pacman -S urbanangel-xfce-theme --noconfirm
sudo pacman -S view-xfce-theme --noconfirm


# Skel
tput setaf 6
echo "################################################################"
echo "FINAL SKEL"
echo "Copying all files and folders from /etc/skel to ~"
echo "################################################################"
echo;tput sgr0
sudo pacman -S archlinux-appstream-data --noconfirm
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf /etc/skel/. ~

tput setaf 2
echo "################################################################"
echo "ALL DONE!!!!!!!!!!!!!!!"
echo "################################################################"
echo;tput sgr0
