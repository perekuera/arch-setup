#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed base-devel pacman-contrib bash-completion zsh zsh-completions x11-ssh-askpass
sudo pacman -S --needed less git vim
sudo pacman -S --needed alacritty vscode 

#Yay install
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si

yay -S google-chrome pfetch

#Rate mirrors
yay -S rate-mirrors
sudo rate-mirrors --entry-country ES --disable-comments --save /etc/pacman.d/mirrorlist --allow-root arch --max-delay 500



