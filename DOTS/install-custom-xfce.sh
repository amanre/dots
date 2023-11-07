#!/bin/bash
#set -e

#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "###################  Software to install"
echo "################################################################"
tput sgr0
echo

if grep -q custom_repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ custom repos are already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo
  else
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Getting  repos "
  echo "################################################################"
  tput sgr0
  echo
  sh custom/get-custom-repo.sh
  sudo pacman -Sy
  sudo pacman -S yay-bin
  
fi

# install yay if not already installed
if ! command -v yay > /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

echo
tput setaf 2
echo "################################################################"
echo "################### Install Software"
echo "################################################################"
tput sgr0
echo

echo "Which GPU Driver you want to install?"
echo "1- NVIDIA"
echo "2- AMD"
echo "Any Key To SKIP"
read choice

if [[ "$choice" -eq 1 ]]; then
  
  echo ""
  echo "Installing NVIDIA Drivers.... "
 sh nvidia.sh

elif [[ "$choice" -eq 2 ]]; then
  
  echo ""
  echo "Installing AMD Drivers.... "
  sh amd.sh

else

  break 
   
fi


PKGS=(

# Custom-Repo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
#xfce
xfce-dualscreen
#xfce-notebook
catppuccin-icons
plank-themes-git
conky-lua-archers
pywal-conky-git
gtk-themes-git
dracular-icons
win11-icons-git
root-git
tokyonight-icons
tela-circle-icon-theme-all
wallpaper-git
dualwalls.git
grub-themes
catppuccin-gtk-theme-mocha
catppuccin-gtk-theme-macchiato
catppuccin-gtk-theme-frappe
catppuccin-gtk-theme-latte
bspwm-config-git
thunderbird
gtk-themes-git
icon-themes-git
archlinux-logout-git
archlinux-logout-themes-git
betterlockscreen
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
