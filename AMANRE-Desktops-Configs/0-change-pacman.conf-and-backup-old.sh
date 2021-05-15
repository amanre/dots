#!/bin/bash
#set -e

echo "backup pacman.conf and install new pacman.conf"
sudo cp /etc/pacman.conf /etc/pacman.conf.backup
sudo cp -f pacman.conf /etc/pacman.conf
sudo pacman -Sy
echo
echo "###############################################################################"
echo "###                               DONE                                     ####"
echo "###############################################################################"
echo
