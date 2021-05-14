#!/bin/bash


echo "##################################################################"
echo "######  Make sure you are executing this script as ROOT  #########"
echo "###### Example:  sudo ./install-dots.sh  #####"
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

## FairyOS Repository
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

sleep 7

echo
echo "INSTALLING MORE SOFTWARE"
echo

update () {
# Sync and refresh pacman database and update all of the packages
sudo pacman -Syyu --noconfirm
yay -Syu --noconfirm
}

echo 
echo "DELETING ARCOLINUX DESKTOPS & FOLDERS"
echo

pacman -Rsc openbox arcolinux-openbox-git --noconfirm 
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
sleep 3

echo
echo "INSTALLING FAIRYOS DESKTOPS & CONFIGS"
echo
sleep 3

PKGS=(

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    'android-studio'            # Android Studio

    
    # FAIRYOS DESKTOPS --------------------------------------------------------------

    'bspwm-patched'
	'openbox-patched'

	# FAIRYOS APPS ---------------------------------------------------------------------
	'spotrec'
	'spotify-adblock-linux'
	'fairyos-polybar-git'
	'fairyos-rofi-git'
	'fairyos-pywal-conky-git'
	'kdocker'
	'shell-color-scripts'
	'timeshift-autosnap'
	'trizen'
	'ttf-meslo-nerd-font-powerlevel10k'
	'zsh-theme-powerlevel10k-git'
	'jgmenu'
	'oh-my-zsh-git'

	#FAIRYOS CONFIGS --------------------------------------------------------------
	'fairyos-nitrogen-git'
	'fairyos-xfce-git'
	'fairyos-alacritty-config-git'
	'fairyos-bin-git'
	'fairyos-root-git'
	'fairyos-jgmenu-config-git'
	'fairyos-plank-git'
	'fairyos-polybar-git'
	'fairyos-dconf-git'

	# THEMEING --------------------------------------------------------------------
	'bibata-curser-theme'
	'bibata-rainbow-curser-theme'
	'candy-gtk-theme'
	'candy-icon-git'
	'fairyos-beautyline-git'
	'fairyos-fonts-git'
	'fairyos-gtk-themes-git'
	'fairyos-icon-themes-git'
	'fairyos-openbox-themes-git'
	'fairyos-panel-profiles-git'
	'fairyos-plank-themes-git'
	'fairyos-wallpapers-git'
	'fairyos-wallpaper-v1-git'
	'fairyos-wallpaper-v2-git'


)



for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

echo
echo "EVERYTHING INSTALLED !"
echo
sleep 3

echo
echo "INSTALLATION OF MY PERSONAL DOTFILES"
echo
sleep 3

git clone --recursive --separate-git-dir=$HOME/.dots.git https://github.com/amanre/dots.git /tmp/dots
rsync -rvl --exclude ".git" /tmp/dots/ $HOME/
rm -r /tmp/dots

echo
echo "INSTALLATION COMPLETE"
echo
sleep 5
reboot



