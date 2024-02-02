#Elimina packages no usados
sudo pacman -Rns $(pacman -Qtdq)


#PACMAN PROBLEMS

sudo pacman -Syyu
sudo pacman-key --verify
sudo pacman-key --refresh-keys
sudo pacman-key --populate archlinux
sudo pacman -Sy archlinux-keyring
sudo pacman -U archlinux-keyring


sudo rm -R /var/lib/pacman/sync
sudo -E pacman -Syu
