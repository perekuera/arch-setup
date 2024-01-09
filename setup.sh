#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed base-devel pacman-contrib bash-completion zsh zsh-completions
#sudo pacman -S x11-ssh-askpass
#sudo pacman -S --needed usbutils pciutils
sudo pacman -S --needed less git vi vim
sudo pacman -S --needed ttf-dejavu ttf-liberation noto-fonts  ttf-fira-sans
sudo pacman -S --needed alacritty

mkdir ~/.config/alacritty
cp ./config/alacritty.toml ~/.config/alacritty/

#Yay install
git clone https://aur.archlinux.org/yay.git
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
#sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
#examples:
#ZSH_THEME="agnoster"
#ZSH_THEME="refined"

#Extensions Gnome 45
sudo pacman -S gnome-browser-connector

#pulse secure
yay -S pulse-secure

#visual studio code
yay -S visual-studio-code-bin

git config --global init.defaultBranch main
git config --global core.editor "code --wait"

#for pulse secuire UI
sudo pacman -S webkit2gtk
#systemctl start pulsesecure
#systemctl enable pulsesecure
#/opt/pulsesecure/bin/pulseUI

#remmina
sudo pacman -S remmina

#teams
yay -S teams

sudo pacman -S gdm-settings

#monitors
sudo cp ~/.config/monitors.xml /var/lib/gdm/.config/

#To automatically re-configure the monitor setup on each boot, use a drop-in file for gdm.service:
#/etc/systemd/system/gdm.service.d/override.conf
# [Service]
# ExecStartPre=/bin/cp /home/user/.config/monitors.xml /var/lib/gdm/.config/monitors.xml

#grub themes
#git clone https://github.com/AdisonCavani/distro-grub-themes.git
