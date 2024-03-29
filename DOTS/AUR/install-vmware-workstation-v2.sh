#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#gpg --keyserver hkps://pgp.mit.edu:443 --recv-keys C52048C0C0748FEE227D47A2702353E0F7E48EDB

# package="ncurses5-compat-libs"
#
# #----------------------------------------------------------------------------------
#
# #checking if application is already installed or else install with aur helpers
# if pacman -Qi $package &> /dev/null; then
#
# 		tput setaf 2
# 		echo "################################################################"
# 		echo "################## "$package" is already installed"
# 		echo "################################################################"
# 		tput sgr0
#
# else
#
# 	#checking which helper is installed
# 	if pacman -Qi yay &> /dev/null; then
#
# 		tput setaf 3
# 		echo "################################################################"
# 		echo "######### Installing with yay"
# 		echo "################################################################"
# 		tput sgr0
#
# 		yay -S --noconfirm $package
#
# 	elif pacman -Qi trizen &> /dev/null; then
#
# 		tput setaf 3
# 		echo "################################################################"
# 		echo "######### Installing with trizen"
# 		echo "################################################################"
# 		tput sgr0
# 		trizen -S --noconfirm --needed --noedit $package
#
# 	fi
#
# fi
#
#
# # Just checking if installation was successful
# if pacman -Qi $package &> /dev/null; then
#
# 	tput setaf 2
# 	echo "################################################################"
# 	echo "#########  Checking ..."$package" has been installed"
# 	echo "################################################################"
# 	tput sgr0
#
# else
#
# 	tput setaf 1
# 	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
# 	echo "!!!!!!!!!  "$package" has NOT been installed"
# 	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
# 	tput sgr0
#
# fi

#----------------------------------------------------------------------------------



package="linux-headers"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		tput setaf 2
		echo "################################################################"
		echo "################## "$package" is already installed"
		echo "################################################################"
		tput sgr0

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		tput setaf 3
		echo "################################################################"
		echo "######### Installing with yay"
		echo "################################################################"
		tput sgr0

		yay -S --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		tput setaf 3
		echo "################################################################"
		echo "######### Installing with trizen"
		echo "################################################################"
		tput sgr0
		trizen -S --noconfirm --needed --noedit $package

	fi

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo "################################################################"
	echo "#########  Checking ..."$package" has been installed"
	echo "################################################################"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------

package="vmware-workstation"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		tput setaf 2
		echo "################################################################"
		echo "################## "$package" is already installed"
		echo "################################################################"
		tput sgr0

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		tput setaf 3
		echo "################################################################"
		echo "######### Installing with yay"
		echo "################################################################"
		tput sgr0

		yay -S --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		tput setaf 3
		echo "################################################################"
		echo "######### Installing with trizen"
		echo "################################################################"
		tput sgr0
		trizen -S --noconfirm --needed --noedit $package

	fi

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo "################################################################"
	echo "#########  Checking ..."$package" has been installed"
	echo "################################################################"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------


echo "Starting your network vmware service to have network connection"
sudo systemctl enable vmware-networks.service
sudo systemctl start vmware-networks.service

echo "REBOOT NOW"
