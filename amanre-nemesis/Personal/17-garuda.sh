#!/bin/bash
#set -e

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### We are on Garuda"
	echo "################################################################"
	tput sgr0
	echo

		

		echo "Changing the whiskermenu"
		echo
		cp $installed_dir/settings/garuda/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce4-panel.xml
		sudo cp $installed_dir/settings/garuda/xfce4-panel.xml /etc/skel/.config/xfce4/xconf/xfce4-panel.xml
		
		cp $installed_dir/settings/garuda/.face ~/.face
		sudo cp $installed_dir/settings/garuda/.face /etc/skel/.face