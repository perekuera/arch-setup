#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed base-devel pacman-contrib bash-completion zsh zsh-completions x11-ssh-askpass
sudo pacman -S --needed less git vi vim
sudo pacman -S --needed ttf-dejavu ttf-liberation noto-fonts
sudo pacman -S --needed alacritty vscode 

git config --global init.defaultBranch main
git config --global core.editor "code --wait"

#Yay install
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si

yay -S google-chrome pfetch

#Rate mirrors
yay -S rate-mirrors
sudo rate-mirrors --entry-country ES --disable-comments --save /etc/pacman.d/mirrorlist --allow-root arch --max-delay 500

rm -r ~/Descargas
rm -r ~/Documentos
rm -r ~/Escritorio
rm -r ~/Imágenes
rm -r ~/Música
rm -r ~/Plantillas
rm -r ~/Público
rm -r ~/Vídeos

#oh-my-bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
#OSH_THEME="agnoster"

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
#examples:
#ZSH_THEME="agnoster"
#ZSH_THEME="refined"

#pulse secure
yay -S pulse-secure

#for pulse secuire UI
sudo pacman -S libwebkit2gtk
#systemctl start pulsesecure
#systemctl enable pulsesecure
#/opt/pulsesecure/bin/pulseUI

#remmina
sudo pacman -S remmina

#teams
yay -S teams
