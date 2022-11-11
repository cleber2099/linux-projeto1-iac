#!/bin/bash
mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


useradd carlos -c "adm" -s /bin/bash -m -p $(openssl  passwd Senha123) -G GRP_ADM
useradd maria -c "adm" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "adm" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora -c "ven" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "ven" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "ven" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd josefina -c "Sec" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Sec" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Sec" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
