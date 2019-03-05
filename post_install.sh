#!/bin/bash

#Install X Server
sudo pacman -S xorg-server xorg-init --noconfirm

#install and enable i3 and other things
sudo pacman -S i3-gaps feh compton --noconfirm

#Install Plasma KDE
sudo pacman -S plasma-desktop --noconfirm

#Install and enable lightDM
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm
sudo systemctl enable lightdm.service

#Install basic application
sudo pacman -S konsole dolphin firefox code --noconfirm

#Install yaourt prep
sudo pacman -S git --noconfirm
sudo pacman -S --needed wget yajl --noconfirm

#Install Fish
sudo pacman -S fish --noconfirm
curl -L https://get.oh-my.fish
omf install bobthefish

#Install powerline
sudo pacman -S powerline powerline-fonts --noconfirm

#Install base packages
sudo pacman -S adobe-source-sans-pro-fonts otf-fira-code aspell-en enchant gst-libav gst-plugins-good icedtea-web jre8-openjdk languagetool libmythes mythes-en pkgstats ttf-anonymous-pro ttf-bitstream-vera ttf-dejavu ttf-droid ttf-gentium ttf-liberation ttf-ubuntu-font-family --noconfirm

#Install audio
sudo pacman -S pulseaudio pulseaudio-alsa plasma-pa --noconfirm

# Install plasma utilities
sudo pacman -S breeze-gtk breeze-kde4 kde-gtk-config --noconfirm
sudo pacman -S kdeplasma-addons --noconfirm
sudo pacman -S ark kinfocenter kwalletmanager gwenview kipi-plugins spectacle okular deluge kfind kscreen --noconfirm