#!/bin/bash
echo '

[custom_repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch' | sudo tee --append /etc/pacman.conf




