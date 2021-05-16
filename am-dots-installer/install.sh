#!/bin/bash
echo "backing up pacman.conf and install new pacman .conf"
sudo cp /etc/pacman.conf /etc/pacman.conf.backup
sudo cp -f pacman.conf /etc/pacman.conf
sudo pacman -Sy
echo "new pacman.conf installed"
sleep 3

echo
echo "INSTALLING FAIRYOS DESKTOPS & CONFIGS"
echo
sleep 3
# Deleting ArcoLinux folders
sudo pacman -R --noconfirm arcolinux-rofi-git
sudo pacman -R --noconfirm arcolinux-rofi-themes-git
sudo pacman -R --noconfirm arc-gtk-theme
sudo pacman -R --noconfirm arcolinux-plank-git
sudo pacman -R --noconfirm arcolinux-polybar-git
sudo pacman -R --noconfirm arcolinux-variety-git
sudo pacman -R --noconfirm arcolinux-variety-autostart-git
sudo pacman -R --noconfirm arcolinux-xfce-panel-profiles-git
sudo pacman -R --noconfirm arcolinux-zsh-git
#sudo pacman -R --noconfirm arcolinux-root-git
sudo pacman -R --noconfirm arcolinux-nitrogen-git
sudo pacman -R --noconfirm arcolinux-bin-git
sudo pacman -R --noconfirm arcolinux-openbox-themes-git
sudo pacman -R --noconfirm openbox-themes-pambudi-git
sudo pacman -R --noconfirm arcolinux-dconf-all-desktops-git
#sudo pacman -R --noconfirm arcolinux-qt5-git
sudo pacman -R --noconfirm arcolinux-xfce-git
sudo pacman -R --noconfirm variety
sudo pacman -R --noconfirm arcolinux-openbox-git
sudo pacman -R --noconfirm arcolinux-bspwm-git
sudo pacman -R --noconfirm vivaldi
sudo pacman -R --noconfirm vivaldi-ffmpeg-codecs
sudo pacman -R --noconfirm vivaldi-widevine
sudo pacman -R --noconfirm chromium

# Installing Software & Configs

PKGS=(

    # DEVELOPMENT ---------------------------------------------------------
    
    #'visual-studio-code-bin'    # Kickass text editor
    #'android-studio'            # Android Studio

    
	# FAIRYOS APPS ---------------------------------------------------------------------
	'spotrec'
	'spotify-adblock-linux'
	'fairyos-polybar-git'
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
	'opera'
	'opera-ffmpeg-codecs'
	#'opera-beta'
	#'opera-beta-ffmpeg-codecs'

	#FAIRYOS CONFIGS --------------------------------------------------------------
	'fairyos-nitrogen-git'
	#'fairyos-root-git'
	'fairyos-xfce-git'
	'fairyos-alacritty-config-git'
	'fairyos-bin-git'
	'fairyos-root-git'
	'fairyos-rofi-git'
	'fairyos-jgmenu-config-git'
	'fairyos-plank-git'
	'fairyos-polybar-git'
	'fairyos-dconf-git'

	# THEMEING --------------------------------------------------------------------
	'bibata-rainbow-cursor-theme'
	'candy-gtk-theme'
	'candy-icons-git'
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
# Change to zsh
sudo chsh $USER -s /bin/zsh

# Dots install
git clone --recursive --separate-git-dir=$HOME/.dots.git https://github.com/amanre/dots.git /tmp/dots
rsync -rvl --exclude ".git" /tmp/dots/ $HOME/
rm -r /tmp/dots
echo
echo "Dotfiles Installation completed"
sleep 3

su

echo 
echo "Installation of CyberXero grob Theme"
echo
sleep 3

# Grub2 Theme Install

ROOT_UID=0
THEME_DIR="/boot/grub/themes"
THEME_NAME=CyberXero
MAX_DELAY=20                                        # max delay for user to enter root pass

#COLORS
CDEF=" \033[0m"                                     # default color
CCIN=" \033[0;36m"                                  # info color
CGSC=" \033[0;32m"                                  # success color
CRER=" \033[0;31m"                                  # error color
CWAR=" \033[0;33m"                                  # waring color
b_CDEF=" \033[1;37m"                                # bold default color
b_CCIN=" \033[1;36m"                                # bold info color
b_CGSC=" \033[1;32m"                                # bold success color
b_CRER=" \033[1;31m"                                # bold error color
b_CWAR=" \033[1;33m"                                # bold warning color

# echo like ...  with  flag type  and display message  colors
prompt () {
  case ${1} in
    "-s"|"--success")
      echo -e "${b_CGSC}${@/-s/}${CDEF}";;          # print success message
    "-e"|"--error")
      echo -e "${b_CRER}${@/-e/}${CDEF}";;          # print error message
    "-w"|"--warning")
      echo -e "${b_CWAR}${@/-w/}${CDEF}";;          # print warning message
    "-i"|"--info")
      echo -e "${b_CCIN}${@/-i/}${CDEF}";;          # print info message
    *)
    echo -e "$@"
    ;;
  esac
}

# Welcome message
prompt -s "\n\t************************\n\t*  ${THEME_NAME} - Grub2 Theme  *\n\t************************"

# Check command avalibility
function has_command() {
  command -v $1 > /dev/null
}

# Checking for root access and proceed if it is present
if [ "$UID" -eq "$ROOT_UID" ]; then

  # Create themes directory if not exists
  prompt -i "\nChecking directory...\n"
  [[ -d ${THEME_DIR}/${THEME_NAME} ]] && rm -rf ${THEME_DIR}/${THEME_NAME}
  mkdir -p "${THEME_DIR}/${THEME_NAME}"

  # Copy theme
  prompt -i "\nInstalling theme...\n"

  cp -a ${THEME_NAME}/* ${THEME_DIR}/${THEME_NAME}

  # Set theme
  prompt -i "\nSetting the theme as main...\n"

  # Backup grub config
  cp -an /etc/default/grub /etc/default/grub.bak

  grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub

  echo "GRUB_THEME=\"${THEME_DIR}/${THEME_NAME}/theme.txt\"" >> /etc/default/grub

  # Update grub config
  echo -e "Updating grub..."
  if has_command update-grub; then
    update-grub
  elif has_command grub-mkconfig; then
    grub-mkconfig -o /boot/grub/grub.cfg
  elif has_command grub2-mkconfig; then
    if has_command zypper; then
      grub2-mkconfig -o /boot/grub2/grub.cfg
    elif has_command dnf; then
      grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
    fi
  fi

  # Success message
  prompt -s "\n\t          ***************\n\t          *  installed!  *\n\t          ***************\n"

else

  # Error message
  prompt -e "\n [ Error! ] -> Run me as root "

  # persisted execution of the script as root
  read -p "[ trusted ] specify the root password : " -t${MAX_DELAY} -s
  [[ -n "$REPLY" ]] && {
    sudo -S <<< $REPLY $0
  } || {
    prompt  "\n Operation canceled"
    exit 1
  }
fi

echo
echo "Now WE WILL REBOOT FOR YOU !"
echo
sleep 2
reboot

echo
echo "INSTALLATION COMPLETE"
echo