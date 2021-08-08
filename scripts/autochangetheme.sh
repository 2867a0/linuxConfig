#!/bin/bash

light=("07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19");

date=`date | cut -d " " -f 5`;
time=${date%%:*};

# light
#if [[ $time -ge 07 && $time -le 19 ]]; then
if [[ "${light[@]}" =~ "${time}"  ]]; then
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Coast&sunset..jpg';
	gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-light';
	gsettings set org.gnome.shell.extensions.user-theme name 'Mojave-light';
# night
else
	# background
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/colorado.jpg';
	# application
	gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-dark';
	# shell
	gsettings set org.gnome.shell.extensions.user-theme name 'Mojave-dark';
fi
