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
sudo pacman -R xfce4-screensaver --noconfirm
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


 # when on EOS - remove conflicting files

if grep -q "EndeavourOS" /etc/os-release; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Removing software for EOS"
  echo "################################################################"
  tput sgr0

  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi

  sudo systemctl disable firewalld
  sudo pacman -R --noconfirm firewalld
  #sudo pacman -R --noconfirm arc-gtk-theme-eos
  sudo pacman -Rdd --noconfirm endeavouros-skel-default endeavouros-skel-xfce4
  sudo pacman -Rdd --noconfirm modemmanager modemmanager-qt
  sudo pacman -R --noconfirm yay
  sudo pacman -R --noconfirm xfce4-screensaver

  # sudo rm -r /etc/skel/.config/Kvantum
  # sudo rm -r /etc/skel/.config/gtk-3.0
  # sudo rm -r /etc/skel/.config/variety
  # sudo rm -r /etc/skel/.config/Thunar
  # sudo rm -r /etc/skel/.config/xfce4
  # sudo rm -r /etc/skel/.zshrc

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi
  
     
 



