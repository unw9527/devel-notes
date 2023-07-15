#!/bin/bash

# The file is from: https://github.com/thatLeaflet/change-theme/blob/main/change-theme.sh

# put then names of your GTK3 themes here
# for example, here's mine
LIGHT_GTK3_THEME='Yaru-purple'
DARK_GTK3_THEME='Yaru-purple-dark'


CURRENT_THEME=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$CURRENT_THEME" == "'prefer-light'" ]]; then
	gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
	gsettings set org.gnome.desktop.interface gtk-theme "$DARK_GTK3_THEME"
else
	gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
	gsettings set org.gnome.desktop.interface gtk-theme "$LIGHT_GTK3_THEME"
fi
