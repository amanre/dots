#!/bin/bash
echo
echo "INSTALLING FAIRYOS DESKTOPS & CONFIGS"
echo
sleep 3

PKGS=(

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    #'android-studio'            # Android Studio

    
	# FAIRYOS APPS ---------------------------------------------------------------------
	'spotrec'
	'spotify-adblock-linux'
	'fairyos-polybar-git'
	'fairyos-rofi-git'
	'fairyos-pywal-conky-git'
	'kdocker'
	'shell-color-scripts'
	'timeshift-autosnap'
	'grub-btrfs'
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
	'bibata-rainbow-cursor-theme'
	'candy-gtk-theme'
	'candy-icon-git'
	'fairyos-beautyline-git'
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
echo "INSTALLATION OF MY PERSONAL DOTFILES ANSWER ALWAYS WITH Y WHEN ASK"
echo
sleep 3
sudo pacman -S openbox-patched
sudo pacman -S bspwm-patched
sudo chsh $USER -s /bin/zsh
git clone --recursive --separate-git-dir=$HOME/.dots.git https://github.com/amanre/dots.git /tmp/dots
rsync -rvl --exclude ".git" /tmp/dots/ $HOME/
rm -r /tmp/dots
echo
echo "INSTALLATION COMPLETE"
echo
sleep 2
echo
echo "WE WILL REBOOT NOW"
echo
sleep 3
reboot