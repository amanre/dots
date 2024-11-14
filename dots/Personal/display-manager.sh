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
tput setaf 2
echo "################################################################"
echo "################### Display manager"
echo "################################################################"
tput sgr0
echo



	echo
	tput setaf 2
	echo "################################################################"
	echo "################### We are on ArcoLinux"
	echo "################################################################"
	tput sgr0
	echo

	echo
	echo "Changing sddm theme"
	if [ -f /usr/lib/sddm/sddm.conf.d/default.conf ]; then
		sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf
		echo
		echo "Changing sddm theme"
		echo
		sudo pacman -S --noconfirm --needed multicolor-sddm-theme
		FIND="Current="
		REPLACE="Current=multicolor-sddm-theme"
		sudo sed -i "s/$FIND/$REPLACE/g" /etc/sddm.conf
	fi

	echo
	tput setaf 6
	echo "################################################################"
	echo "################### Done"
	echo "################################################################"
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
