#!/bin/bash
#set -e

if  lsblk -f | grep btrfs > /dev/null 2>&1 ; then

    echo
    tput setaf 2
    echo "################################################################"
    echo "################### Timeshift to be installed"
    echo "################################################################"
    tput sgr0
    echo    
    echo "You are using BTRFS. Installing the software ..."
    echo
    
    PKGS=(
    'timeshift'
    'grub-btrfs'
    'timeshift-autosnap'
    )

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done
    echo
    tput setaf 2
    echo "################################################################"
    echo "################### Timeshift installed"
    echo "################################################################"
    tput sgr0
    echo    

else

    echo
    tput setaf 2
    echo "################################################################"
    echo "### Your harddisk/ssd/nvme is not formatted as BTRFS."
    echo "### Packages will not be installed."
    echo "################################################################"
    tput sgr0
    echo
fi