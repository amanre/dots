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
plank
plank-themes-git
conky-lua-archers
pywal-conky-git
python-pywal
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
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-hack
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-roboto-mono
ttf-ubuntu-font-family
adobe-source-sans-fonts
gsfonts
sublime-text-4
geany
geany-plugins
sublime-text-4
visual-studio-code-bin
spotify
spotify-adblock-git
spotrec
pragha
mpv
soundconverter
file-roller
font-manager
galculator
gparted
# Gaming Related ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#proton-ge-custom-bin
#protonup-git
#proton-community-updater
#steam
#steam-fonts
#steam-tweaks
#steam-native-runtime
#goverlay-bin
#bottles
#gamemode
#lib32-gamemode
#lutris
#wine-staging
#winetricks
#playonlinux

# Internet ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
discord
#telegram-desktop
#skypeforlinux-stable-bin

# Gaming Related ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#proton-ge-custom-bin
#protonup-git
#proton-community-updater
#steam
#steam-fonts
#steam-tweaks
#steam-native-runtime
#goverlay-bin
#bottles
#gamemode
#lib32-gamemode
#lutris
#wine-staging
#winetricks
#playonlinux

# Kernels ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#linux-zen
#linux-zen-headers

# Printer related +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cups
cups-pdf
ghostscript
gutenprint
gtk3-print-backends
libcups
system-config-printer
samsung-unified-driver-common
samsung-unified-driver-printer
samsung-unified-driver-scanner
canon-pixma-ts5055-complete
# Multimedia ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
simplescreenrecorder
#obs
#gimp
gpick
#cava
inkscape
simple-scan
guvcview

# Utils +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

archiso  
dmenu
downgrade
duf
feh
gnome-disk-utility
htop
imagewriter
mintstick-git
neofetch
qbittorrent
vlc
xorg-kill
yay-bin
zsh
zsh-completions
zsh-syntax-highlighting
sane
xfce4-mpc-plugin
zsh-theme-powerlevel10k-git
ttf-meslo-nerd-font-powerlevel10k
kdocker
kshutdown
xscreensaver
imagewriter

# Office ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
libreoffice-fresh
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
