#!/bin/bash
time=`date | cut -d " " -f 5`;

if [ ${time%%:*} == 07 ]; then
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Coast&sunset..jpg';
	gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-light';
	gsettings set org.gnome.shell.extensions.user-theme name 'Mojave-light';
elif [ ${time%%:*} == 18 ]; then
	# background
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/colorado.jpg';
	# application
	gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-dark';
	# shell
	gsettings set org.gnome.shell.extensions.user-theme name 'Mojave-dark';
fi
