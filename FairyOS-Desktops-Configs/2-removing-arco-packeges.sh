#!/bin/bash

echo "############################################################################"
echo "###### Removing ArcoLinux Desktops, Packages and Configs           #########"
echo "############################################################################"
sleep 3
# Removing packages from ARCOLINUX
sudo pacman -R openbox 
sudo pacman -R arcolinux-openbox-git --noconfirm
sudo pacman -R bspwm --noconfirm
sudo pacman -R arcolinux-bspwm-git --noconfirm
sudo pacman -R arcolinux-zsh-git --noconfirm
sudo pacman -R arcolinux-wallpaper-git --noconfirm
sudo pacman -R arcolinux-variety-autostart-git --noconfirm
sudo pacman -R arcolinux-variety-git --noconfirm
sudo pacman -R arcolinux-bin-git --noconfirm
sudo pacman -R arcolinux-nitrogen-git --noconfirm
sudo pacman -R arcolinux-obmenu-generator-git --noconfirm
sudo pacman -R arcolinux-openbox-themes-git --noconfirm
sudo pacman -R arcolinux-plank-git --noconfirm
sudo pacman -R arcolinux-polybar-git --noconfirm
sudo pacman -R arcolinux-dconf-all-desktops-git --noconfirm
sudo pacman -R arcolinux-root-git --noconfirm --needed
sudo pacman -R arcolinux-xfce-panel-profiles-git --noconfirm
sudo pacman -R arcolinux-xfce-git --noconfirm
sudo pacman -R arc-gtk-theme
sudo pacman -R variety
echo
echo "DELETING ARCOLINUX DESKTOPS & FOLDERS WAS SUCCESSFULL !"
echo
sleep 2
