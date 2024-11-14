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

if [ "$DEBUG" = true ]; then
    echo
    echo "------------------------------------------------------------"
    echo "Running $(basename $0)"
    echo "------------------------------------------------------------"
    echo
    read -n 1 -s -r -p "Debug mode is on. Press any key to continue..."
    echo
fi

##################################################################################################################

echo
tput setaf 3
echo "######################################################"
echo "################### Remove software for all"
echo "######################################################"
tput sgr0
echo

sudo pacman -Rs --noconfirm nomacs
sudo pacman -Rs --noconfirm hardinfo-gtk3
sudo pacman -Rs --noconfirm paru-bin
sudo pacman -Rs --noconfirm yay-bin
sudo pacman -Rs broadcom-wl-dkms --noconfirm
sudo pacman -Rs rtl8821cu-morrownr-dkms-git --noconfirm
sudo pacman -Rs --noconfirm archinstall
sudo pacman -Rs pragha --noconfirm
sudo pacman -Rs lftp --noconfirm
sudo pacman -Rs xf86-video-amdgpu --noconfirm
sudo pacman -Rs xf86-video-fbdev --noconfirm
sudo pacman -Rs xf86-video-openchrome --noconfirm
if pacman -Qi xf86-video-vmware &> /dev/null; then
  sudo pacman -Rs xf86-video-vmware --noconfirm
fi
sudo pacman -Rs xf86-video-ati --noconfirm
sudo pacman -Rs xf86-video-nouveau --noconfirm
sudo pacman -Rs xf86-video-vesa --noconfirm
sudo pacman -Rs --noconfirm xfce4-artwork
sudo rm -rf /usr/share/backgrounds/xfce

sudo pacman -Rs --noconfirm adobe-source-han-sans-cn-fonts
sudo pacman -Rs --noconfirm adobe-source-han-sans-jp-fonts
sudo pacman -Rs --noconfirm adobe-source-han-sans-kr-fonts
sudo pacman -Rs --noconfirm vim vim-runtime


# when on Arch Linux - remove conflicting files
if grep -q "archlinux" /etc/os-release; then

  echo
  tput setaf 2
  echo "######################################################"
  echo "############### Removing software for Arch"
  echo "######################################################"
  tput sgr0
  echo

  echo "Nothing to remove"

  echo
  tput setaf 2
  echo "######################################################"
  echo "################### Software removed"
  echo "######################################################"
  tput sgr0
  echo

fi





# when on ARCOLINUX - remove conflicting files

if grep -q "ArcoLinux" /etc/os-release; then
  echo
  tput setaf 2
  echo "######################################################"
  echo "####### Removing software for ArcoLinux"
  echo "######################################################"
  tput sgr0
  echo
   sudo systemctl disable tlp.service
    sudo pacman -Rs tlp --noconfirm
    sudo pacman -Rs xf86-video-ati --noconfirm
   # sudo pacman -Rs xf86-video-nouveau --noconfirm
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
    sudo pacman -Rs arcolinux-wallpaper-git
    sudo pacman -Rs arcolinux-neofetch-git --noconfirm
    sudo pacman -Rs arcolinux-hyfetch-git --noconfirm
    sudo pacman -Rs chromium --noconfirm
    sudo pacman -Rs arcolinux-geany-git --noconfirm
    sudo pacman -Rs urxvt-fullscreen --noconfirm
    sudo pacman -Rs urxvt-perls --noconfirm
    sudo pacman -Rs urxvt-perls --noconfirm
    sudo pacman -Rs urxvt-resize-font-git --noconfirm
     #sudo pacman -Rs sardi-icons --noconfirm
    sudo pacman -Rs xf86-video-amdgpu --noconfirm
    sudo pacman -Rs xf86-video-fbdev --noconfirm
    sudo pacman -Rs xf86-video-openchrome --noconfirm
    #sudo pacman -Rs thunar-extended --noconfirm
    #sudo pacman -Rs thunar-archive-plugin --noconfirm
    #sudo pacman -Rs thunar-media-tags-plugin --noconfirm
    #sudo pacman -Rs thunar-volman --noconfirm
    sudo pacman -Rs rxvt-unicode --noconfirm
    sudo pacman -Rs arcolinux-xfce-prime-git --noconfirm
    sudo pacman -Rs rxvt-unicode-terminfo --noconfirm
    sudo pacman -Rs arconet-xfce --noconfirm
    sudo pacman -Rs arcolinux-gtk-surfn-arc-git --noconfirm
    sudo pacman -Rs arc-gtk-theme --noconfirm
  
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cd $installed_dir/Personal/settings/arco/

sudo cp -Rf  xfce4-panel.xml   /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/
sudo cp -Rf  xfce4-desktop.xml   /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/
	    
  echo
  tput setaf 2
  echo "######################################################"
  echo "################### Software removed"
  echo "######################################################"
  tput sgr0
  echo

fi


echo
tput setaf 6
echo "######################################################"
echo "###################  $(basename $0) done"
echo "######################################################"
tput sgr0
echo
