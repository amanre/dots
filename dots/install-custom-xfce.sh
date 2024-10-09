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

if grep -q amoslinux_repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ amoslinux repos are already in /etc/pacman.conf"
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
  sh repo/get-amoslinux-repo.sh
  sudo pacman -Sy


fi

# install yay if not already installed
if ! command -v yay > /dev/null; then
    sudo pacman -S yay-git --noconfirm --needed

fi

echo "
#=================================
#=     Which Monitor Setup       =
#=================================

1) Single
2) Dual
Defaults to Single if you choose
something else

"

read Monitor
case $Monitor in
1)
  sudo pacman -S --noconfirm singlescreen;;
2)
  sudo pacman -S --noconfirm dualscreen;;
*)
 sudo pacman -S --noconfirm singlescreen;;
esac



PKGS=(

# Custom-Repo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
custom-xfce4
xfce-theme-manager
#xfce-dualscreen
#xfce-notebook
catppuccin-icons
plank
plank-themes-git
conky-lua-archers
pywal-conky-git
python-pywal
dracular-icons
win11-icons-git
root-git
tokyonight-icons
tela-icons
paru-git
yay-git
arandr
xrandr
grub-themes
catppuccin-gtk-theme-mocha
catppuccin-gtk-theme-macchiato
catppuccin-gtk-theme-frappe
catppuccin-gtk-theme-latte
catppuccin-cursors-latte
catppuccin-cursors-frappe
catppuccin-cursors-macchiato
catppuccin-cursors-mocha
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
#geany
#geany-plugins
#visual-studio-code-bin
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
telegram-desktop
skypeforlinux-stable-bin

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
gimp
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
zsh
zsh-completions
zsh-syntax-highlighting
zsh-autosuggestions
zsh-theme-powerlevel10k-git
sane
xfce4-mpc-plugin
ttf-meslo-nerd-font-powerlevel10k
kdocker
kshutdown
xscreensaver
imagewriter
xorg-xsetroot
flameshot
gnome-screenshot

# Office ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
libreoffice-fresh

# Themes
emilia-xfce-theme
default-xfce-theme
citylights-xfce-theme
red-moon-xfce-theme
soane-nebula-theme
phoenix-xfce-theme

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
