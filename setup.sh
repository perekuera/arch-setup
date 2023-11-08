#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed base-devel pacman-contrib git vim

#Yay install
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si

yay -S rate-mirrors
sudo rate-mirrors --entry-country ES --disable-comments --save /etc/pacman.d/mirrorlist --allow-root arch --max-delay 500
