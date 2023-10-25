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



echo
tput setaf 2
echo "################################################################"
echo "################### Install Software"
echo "################################################################"
tput sgr0
echo

PKGS=(

# Browsers +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#firefox 
#google-chrome
#Opera
#opera-ffmpeg-codecs
#brave-bin
#chromeium
#vivaldi

# Fonts ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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

# Developement ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#sublime-text-4
#geany
#geany-plugins
am-geany-config-git
sublime-text-4
geany
geany-plugins
visual-studio-code-bin
pycharm-community-edition
gitahead-bin
gitfind

# Music ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
spotify
spotify-adblock-git
spotrec
pragha
#ario
#ardour
#audacity
#clementine
#lollypop
mpv
#reaper
#strawberry
soundconverter

# Terminals ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#alacritty
#xfce4-terminal
#deepin-terminal
#kitty
#terminator
#tilda
#tilix
#rxvt-unicode

# Utilities +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
file-roller
font-manager
galculator
gparted
#grub-customizer
#themix-full-git

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

# Kernels
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
asciinema
simplescreenrecorder
#obs
gimp
gpick
cava
inkscape
simple-scan
guvcview

# Utils +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

archiso  
appstream
aic94xx-firmware
arandr
avahi
baobab
bash-completion
bat
catfish
cpuid
curl
dmenu
downgrade
duf
evince
expac
feh
git
gtop
gvfs-smb
gnome-disk-utility
hardinfo-gtk3
hddtemp
htop
hw-probe
imagewriter
kvantum
linux-firmware-qlogic
logrotate
lolcat
lshw
man-db
man-pages
meld
mintstick-git
most
neofetch
network-manager-applet
networkmanager-openvpn
paru-bin
pcmanfm-gtk3
pavucontrol
playerctl
plank
polkit-gnome
python-pywal
pv
qbittorrent
rate mirrors-bin
ripgrep
rsync
scrot
sparklines-git
speedtest-cli-git
squashfs-tools
time
the_platium_sercher-bin
the_silver_searcher
tree
vlc
wd719x-firmware
wgwt
xdg-user-dirs
xorg-kill
yay-bin
zsh
zsh-completions
zsh-syntax-highlighting
sane
gzip
p7zip
unace
unrar
unzip
menulibre
mugshot
xfce4-genmon-plugin
xfce4-mpc-plugin
etcher-bin
peazip
#libpamac-aur
#pamac-aur
zsh-theme-powerlevel10k-git
ttf-meslo-nerd-font-powerlevel10k
kdocker
kshutdown
patool
xscreensaver
imagewriter

# Office ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#libreoffice-fresh
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

sudo systemctl enable avahi-daemon.service
sudo systemctl enable ntpd.service

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
