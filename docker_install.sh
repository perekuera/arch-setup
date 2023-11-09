#!/bin/sh

sudo pacman -Syyu
sudo pacman -S docker docker-compose

sudo systemctl start docker.service
#sudo systemctl start docker.socket

sudo usermod -aG docker $USER
#sudo gpasswd -a perek docker
