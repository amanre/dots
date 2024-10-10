#!/bin/bash
echo '

[dots_repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch

[gh0stzk-dotfiles]
SigLevel = Optional TrustAll
Server = http://gh0stzk.github.io/pkgs/x86_64' | sudo tee --append /etc/pacman.conf





