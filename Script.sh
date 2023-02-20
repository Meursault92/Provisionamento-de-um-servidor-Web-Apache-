#!/bin/bash

echo "Atualizando servidor"

apt-get update
apt-get upgrade -y


echo "Instalando o Apache2"

apt-get install apache2 -y


echo "Instalando o unzip"

apt-get install unzip -y


echo"Instalando o Git"

apt install git -y


echo "Baixando a aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "Descompactar a aplicação"

unzip main.zip


echo "Copiando a aplicação para o servidor"

cd linux-site-dio-main
cd -R * /var/www/html/


echo "Finalizado"
