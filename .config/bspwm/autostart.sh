#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


# set wallpaper
#wal -i "/usr/share/backgrounds/fairyos-wallpaper-v1"
wal -i /usr/share/endeavouros/backgrounds/eos_wallpapers_community/blinky_1.png 
#wal -i "$HOME/.config/bspwm/wall.jpg"
bash ~/.config/polybar/blocks/scripts/pywal.sh /usr/share/endeavouros/backgrounds/eos_wallpapers_community/krimkerre_2_poly.jpg
bash ~/.config/polybar/launch.sh --blocks
#$HOME/.config/polybar/launch_bspwm.sh &
$HOME/.conky/conky-pywal/./start_conky.sh &
xsetroot -cursor_name left_ptr &
#conky -c $HOME/.config/conky/AUR-Nemesis.conkyrc &
$HOME/.config/bspwm/scripts/dualscreen.sh &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run plank &
#run xfce4-panel &
run nm-applet &
#run pamac-tray &
run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#run volumeicon &

