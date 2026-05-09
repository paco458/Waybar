#!/bin/bash

chosen=$(printf "⏻  Apagar\n  Reiniciar\n󰍃  Cerrar sesión\n  Bloquear" | rofi -dmenu \
-theme ~/.config/rofi/power-menu.rasi \
-p "Sistema")

case "$chosen" in
    *Apagar) systemctl poweroff ;;
    *Reiniciar) systemctl reboot ;;
    *"Cerrar sesión") hyprctl dispatch exit ;;
    *Bloquear) hyprlock ;;
esac
