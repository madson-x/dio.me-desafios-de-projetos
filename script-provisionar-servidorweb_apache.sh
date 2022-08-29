#!/bin/bash

echo "Infraestrutura como Código - Script de Provisionamento de um Servidor Web (Apache)"
echo " "
echo "Iniciando o Script."

#============================= Atualizando o servidor ============================#

echo " "
echo "Atualizando o apt.. "
apt update
echo " "
echo "Execução em 10%.."
echo " "
echo "Atualizando o servidor.."
apt upgrade -y
echo " "
echo "Execução em 20%.."
echo " "

#=================================================================================#

#============================= Instalando o Apache2  =============================#

echo " "
echo "Inatalando o Apache2.. "
apt install apache2 -y
echo " "
echo "Apache2 instalado com sucesso!"
echo " "
echo "Execução em 30%.."
echo " "

#=================================================================================#

#============================= Instalando o unzip  =============================#

echo " "
echo "Inatalando o unzip.. "
apt install unzip -y
echo " "
echo "unzip instalado com sucesso!"
echo " "
echo "Execução em 50%.."
echo " "

#=================================================================================#

#============================= Baixando a aplicação  =============================#

echo " "
echo "Obtendo o arquivo da aplicação.. "
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo " "
echo "Arquivo recebido com sucesso!"
echo " "
echo "Execução em 70%.."
echo " "

#=================================================================================#

#============================ Preparando a aplicação =============================#

echo " "
echo "Preparando e instalando a aplicação.. "
unzip main.zip
cp -R /tmp/linux-site-dio-main/* /var/www/html/
echo " "
echo "Aplicação instalada com sucesso!"
echo " "
echo "100% - Fim do script!"
echo " "

#=================================================================================#
