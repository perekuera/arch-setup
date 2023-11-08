#!/bin/sh
echo "Actualizando pacman..."
sudo pacman -Syyu

sudo pacman -S vim

#sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup

echo "Actualizando lista servidores..."
#sudo reflector --threads 4 --latest 20 --fastest 10 --sort rate --protocol https --save /etc/pacman.d/mirrorlist
sudo pacman-mirrors -f 5 5

#cat /etc/pacman.d/mirrorlist
