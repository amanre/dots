#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


# set wallpaper
#wal -i "/usr/share/backgrounds/fairyos-wallpaper-v1"
wal -i "/usr/share/backgrounds/fairyos-wallpapers/wallhaven-k78j37_1920x1080.jpg"
#wal -i "$HOME/.config/bspwm/wall.jpg"
$HOME/.config/polybar/launch_bspwm.sh &
$HOME/.conky/conky-pywal/./start_conky.sh &
xsetroot -cursor_name left_ptr &
#conky -c $HOME/.config/conky/AUR-Nemesis.conkyrc &
run "$HOME/.config/bspwm//scripts/dualscreen.sh" &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run plank &
#run xfce4-panel &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#run volumeicon &

