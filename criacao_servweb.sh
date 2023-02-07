#!/bin/bash

echo "Processo Criação Servidor WEB"

echo "Etapa 1 - Atualizando Servidor"

apt-get update 
apt-get upgrade -y 

echo "Etapa 2 - Instalando Pacotes"

apt-get install apache2 -y
apt-get install unzip -y

echo "Etapa 3 - Baixando Arquivos do Servidor"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp/
unzip /tmp/main.zip -d /tmp/

echo "Etapa 4 - Copiando Arquivos do Servidor"

cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Processo Finalizado!"
