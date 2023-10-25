#!/bin/bash
#set -e

##################################################################################################################
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
tput setaf 3
echo "######################################################"
echo "################### Remove software for all"
echo "######################################################"
tput sgr0
echo

sudo pacman -R --noconfirm archinstall
#sudo pacman -Rs pragha --noconfirm
sudo pacman -Rs lftp --noconfirm
sudo pacman -Rs lshw --noconfirm
sudo pacman -Rs xf86-video-amdgpu --noconfirm
sudo pacman -Rs xf86-video-fbdev --noconfirm
sudo pacman -Rs xf86-video-openchrome --noconfirm
if pacman -Qi xf86-video-vmware &> /dev/null; then
  sudo pacman -Rs xf86-video-vmware --noconfirm
fi
sudo pacman -Rs xf86-video-ati --noconfirm
sudo pacman -Rs xf86-video-nouveau --noconfirm
sudo pacman -Rs xf86-video-vesa --noconfirm
sudo pacman -R --noconfirm xfce4-artwork
sudo rm -rf /usr/share/backgrounds/xfce
sudo pacman -Rs broadcom-wl-dkms --noconfirm
sudo pacman -Rs rtl8821cu-morrownr-dkms-git --noconfirm

sudo pacman -R --noconfirm adobe-source-han-sans-cn-fonts
sudo pacman -R --noconfirm adobe-source-han-sans-jp-fonts
sudo pacman -R --noconfirm adobe-source-han-sans-kr-fonts

# always put the current .bashrc .zshrc away
if [ -f /etc/skel/.bashrc ]; then
  sudo mv /etc/skel/.bashrc /etc/skel/.bashrc-old
fi

if [ -f /etc/skel/.zshrc ]; then
  sudo mv /etc/skel/.zshrc /etc/skel/.zshrc-old
fi


 # when on ARCOLINUX - remove conflicting files

if [ -f /usr/local/bin/get-nemesis-on-arcolinux ]; then
  echo
  tput setaf 2
  echo "################################################################"
  echo "#######Software to remove from an ArcoLinux installation"
  echo "################################################################"
  tput sgr0
  echo

    sudo systemctl disable tlp.service
    sudo pacman -Rs tlp --noconfirm
    sudo pacman -Rs xf86-video-ati --noconfirm
    sudo pacman -Rs xf86-video-nouveau --noconfirm
    sudo pacman -Rs xf86-video-vesa --noconfirm
    sudo pacman -Rs arcolinux-root-git --noconfirm
    sudo pacman -Rs arcolinux-xfce-git --noconfirm
    sudo pacman -Rs arcolinux-panel-profiles-git --noconfirm
    sudo pacman -Rs vivaldi --noconfirm
    sudo pacman -Rs vivaldi-ffmpeg-codecs --noconfirm
    sudo pacman -Rs vivaldi-widevine --noconfirm
    sudo pacman -Rs arcolinux-bin-git --noconfirm
    sudo pacman -Rs arcolinux-alacritty-git --noconfirm
    sudo pacman -Rs arcolinux-conky-collection-git --noconfirm
    sudo pacman -Rs arcolinux-gtk3-sardi-arc-git --noconfirm
    sudo pacman -Rs arcolinux-plank-git --noconfirm
    sudo pacman -Rs arcolinux-plank-themes-git --noconfirm
    sudo pacman -Rs arcolinux-qt5-git --noconfirm
    sudo pacman -Rs arcolinux-termite-themes-git --noconfirm
    sudo pacman -Rs arcolinux-variety-git --noconfirm
    sudo pacman -Rs arcolinux-variety-autostart-git --noconfirm
    sudo pacman -Rs variety --noconfirm
    sudo pacman -Rs arcolinux-wallpapers-git --noconfirm
    sudo pacman -Rs arcolinux-xfce-panel-profiles-git --noconfirm
    sudo pacman -Rs arcolinux-zsh-git --noconfirm
    sudo pacman -Rs arcolinux-config-all-desktops-git --noconfirm
    sudo pacman -Rs arcolinux-dconf-all-desktops-git --noconfirm
    sudo pacman -Rs arcolinux-neofetch-git --noconfirm
    sudo pacman -Rs chromium --noconfirm
    sudo pacman -Rs urxvt-fullscreen --noconfirm
    sudo pacman -Rs urxvt-perls --noconfirm
    sudo pacman -Rs urxvt-perls --noconfirm
    sudo pacman -Rs urxvt-resize-font-git --noconfirm
    sudo pacman -Rs gnome-software --noconfirm
    sudo pacman -Rs gnome-software-packagekit-plugin --noconfirm
    sudo pacman -Rs termite --noconfirm
    sudo pacman -Rs xfce4-screensaver --noconfirm
    #sudo pacman -Rs sardi-icons --noconfirm
    sudo pacman -Rs xf86-video-amdgpu --noconfirm
    sudo pacman -Rs xf86-video-fbdev --noconfirm
    sudo pacman -Rs xf86-video-openchrome --noconfirm
    #sudo pacman -Rs thunar-extended --noconfirm
    #sudo pacman -Rs thunar-archive-plugin --noconfirm
    #sudo pacman -Rs thunar-media-tags-plugin --noconfirm
    #sudo pacman -Rs thunar-volman --noconfirm
    sudo pacman -Rs rxvt-unicode --noconfirm
    sudo pacman -Rs rxvt-unicode-terminfo --noconfirm
      
  fi