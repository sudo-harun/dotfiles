#!/bin/bash
xsetroot -cursor_name left_ptr
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
~/.eww-wayland/target/release/eww daemon
~/.eww-wayland/target/release/eww -c ~/.config/eww/wayland/ open bar

sleep 1
killall -e xdg-desktop-portal-hyprland
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
