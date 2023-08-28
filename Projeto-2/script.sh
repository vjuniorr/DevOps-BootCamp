#!/bin/bash

# Atualizando o Servidor

sudo apt-get update
sudo apt-get upgrade -y

# Instalando o Apache e Unzip

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

# Baixando a aplicação

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Copiando os arquivos para a pasta do apache

cd linux-site-dio-main
cp -R * /var/www/html/