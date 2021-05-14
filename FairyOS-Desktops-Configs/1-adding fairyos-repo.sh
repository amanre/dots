#!/bin/bash


echo "##################################################################"
echo "######  Make sure you are executing this script as ROOT  #########"
echo "###### Example:  sudo ./install-dots.sh                      #####"
echo "##################################################################"
sleep 7

update () {
# Sync and refresh pacman database and update all of the packages
sudo pacman -Syy && sudo pacman -Syu --noconfirm
yay -Syu --noconfirm

sudo pacman -S archlinux-keyring
sudo pacman-key --populate
}

fairyos-repo () {
# Append fairyos repo
cat >> /etc/pacman.conf <<- _EOF_

[fairyos-repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch
	_EOF_
	
	# Refresh the database and the repository
	sudo pacman -Syyu
}

add_fairyos_repo () {
# Check if FairyOS repository already exists. 
# If it's missing, add it to the pacman.config file.
repo_get_line=$(grep -E "(fairyos-repo)" /etc/pacman.conf)
repo_fairyos_line="[fairyos-repo]"

if [ "$repo_get_line" == "$repo_fairyos_line" ]; then
    echo "FairyOS repository already exists."
else
	# Add fairyos-repo
	fairyos-repo
	echo "FairyOS repository was added successfully."
fi
}


add_fairyos_repo
