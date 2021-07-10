#!/bin/bash
set -e


# you can use lscpu in the terminal to know if you have an intel or amd

echo "This script will install the microcode for your system"
echo "Remember if dual booting - you have to manually change some of the grublines"
echo "to be able to boot. Fallback lines in grub will always work."
echo "https://wiki.archlinux.org/index.php/Microcode"

sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"
