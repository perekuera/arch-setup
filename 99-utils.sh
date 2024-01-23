#Elimina packages no usados
sudo pacman -Rns $(pacman -Qtdq)
