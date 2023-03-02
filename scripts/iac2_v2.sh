#!/bin/bash

echo 'atualizando o servidor e instalando pacotes necessários...'
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo 'baixando, extraindo e copiando os arquivos da aplicação para a pasta padrão do apache...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

echo 'finalizado!'
