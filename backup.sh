#!/bin/sh

BACKUP_DIR="./system_backup"
AWS_DIR="$HOME/.aws"
SSH_DIR="$HOME/.ssh"

# Si no existe la carpeta .aws en el directorio ./system_backup la crea
if [ ! -d "$BACKUP_DIR/.aws" ]; then
    mkdir -p "$BACKUP_DIR/.aws"
fi

# Copiar los archivos config y credentials desde ~/.aws a ./system_backup/.aws
cp "$AWS_DIR/config" "$AWS_DIR/credentials" "$BACKUP_DIR/.aws/"

# .gitconfig
cp ~/.gitconfig "$BACKUP_DIR"

# .ssh
if [ ! -d "$BACKUP_DIR/.ssh" ]; then
    mkdir -p "$BACKUP_DIR/.ssh"
fi

cp "$SSH_DIR"/* "$BACKUP_DIR/.ssh/"


echo "Backup realizado correctamente"
