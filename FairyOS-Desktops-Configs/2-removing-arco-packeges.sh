#!/bin/bash

echo "############################################################################"
echo "###### Installation of personal Dotfiles & Configs for ArcoLinux   #########"
echo "############################################################################" 

sleep 3

echo 
echo "DELETING ARCOLINUX DESKTOPS & FOLDERS"
echo
sleep 3

pacman -R openbox arcolinux-openbox-git --noconfirm 
pacman -Rsc bspwm arcolinux-bspwm-git --noconfirm
pacman -Rsc arcolinux-zsh-git --noconfirm 
pacman -Rsc arcolinux-wallpaper-git --noconfirm 
pacman -Rsc arcolinux-variety-autostart-git --noconfirm
pacman -Rsc arcolinux-variety-git --noconfirm 
pacman -Rsc arcolinux-bin-git --noconfirm 
pacman -Rsc arcolinux-nitrogen-git --noconfirm 
pacman -Rsc arcolinux-obmenu-generator-git --noconfirm 
pacman -Rsc arcolinux-openbox-themes-git --noconfirm
pacman -Rsc arcolinux-plank-git --noconfirm
pacman -Rsc arcolinux-polybar-git --noconfirm
pacman -Rsc arcolinux-dconf-all-desktops-git --noconfirm 
pacman -Rsc arcolinux-root-git --noconfirm --needed
pacman -Rsc arcolinux-xfce-panel-profiles-git --noconfirm 
pacman -Rsc arcolinux-xfce-git --noconfirm

echo
echo "DELETING ARCOLINUX DESKTOPS & FOLDERS WAS SUCCESSFULL !"
echo


