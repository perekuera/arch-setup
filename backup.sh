#!/bin/sh

BACKUP_DIR="./system_backup"
AWS_DIR="$HOME/.aws"

# Si no existe la carpeta .aws en el directorio ./system_backup la crea
if [ ! -d "$BACKUP_DIR/.aws" ]; then
    mkdir -p "$BACKUP_DIR/.aws"
fi

# Copiar los archivos config y credentials desde ~/.aws a ./system_backup/.aws
cp -r "$AWS_DIR/config" "$AWS_DIR/credentials" "$BACKUP_DIR/.aws/"

echo "Archivos copiados exitosamente a $BACKUP_DIR/.aws"
