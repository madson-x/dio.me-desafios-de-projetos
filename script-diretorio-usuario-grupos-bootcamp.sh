#!/bin/bash

#Script para o desafio de projeto do Bootcamp Linux Experience (dio.me)


#============================= Criando os Grupos =============================#

#Removendo os grupos caso existam.
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo " "
echo "Criando grupos..."
echo " "

groupadd GRP_ADM
echo "Grupo GRP_ADM criado."
groupadd GRP_VEN
echo "Grupo GRP_VEM criado."
groupadd GRP_SEC
echo "Grupo GRP_SEC criado."
echo " "
echo "Grupos criados!"
echo " "

#=================================================================================#

#============================= Criando os diretórios =============================#

#Removendo os diretórios caso existam.
rm -rf /publico/ /adm/ /ven/ /sec/
echo " "
echo "Criando diretórios..."
echo " "

mkdir -v /publico /adm /ven /sec

echo " "
echo "Diretórios criados!"
echo " "

echo "Alterando permissões dos diretórios.."
echo " "
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
#chown root:root /publico/
echo "Alteração de permissões concluída!"
echo " "

echo " "
echo "Alterando permissões de leitura dos diretórios.."
echo " "
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/
echo "Permissões de leitura definidas!"
echo " "

#=================================================================================#

#============================== Criando os Usuários ==============================#

#Removendo os grupos caso existam.
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f demora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo " "
echo "Criando usuários do sistema..."
echo " "

useradd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd usr123)
echo "Usuário Carlos criado!"
echo " "

useradd maria -m -c "Maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd usr123)
echo "Usuária Maria criada!"
echo " "

useradd joao -m -c "João" -s /bin/bash -G GRP_ADM -p $(openssl passwd usr123)
echo "Usuário João criado!"
echo " "

useradd debora -m -c "Débora" -s /bin/bash -G GRP_VEN -p $(openssl passwd usr123)
echo "Usuária Débora criada!"
echo " "

useradd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd usr123)
echo "Usuária Sebastiana criada!"
echo " "

useradd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd usr123)
echo "Usuário Roberto criado!"
echo " "

useradd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd usr123)
echo "Usuária Josefina criada!"
echo " "

useradd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd usr123)
echo "Usuária Amanda criada!"
echo " "

useradd rogerio -m -c "Rogério" -s /bin/bash -G GRP_SEC -p $(openssl passwd usr123)
echo "Usuário Rogério criado!"
echo " "

echo " "
echo "Fim de execução do script! :D"
echo " "

#=================================================================================#
