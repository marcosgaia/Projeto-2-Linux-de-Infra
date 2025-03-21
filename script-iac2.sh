#!/bin/bash

# Atualizar servidor
echo "Atualizando servidor..."
sudo apt update -y && sudo apt upgrade -y

# Instalar Apache e Unzip
echo "Instalando Apache e Unzip..."
sudo apt install apache2 unzip -y

# Baixar e configurar aplicação
echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
sudo cp -R linux-site-dio-main/* /var/www/html/

# Reiniciar Apache
echo "Reiniciando Apache..."
sudo systemctl restart apache2

# Subir script no GitHub
echo "Enviando script para o GitHub..."
git clone "$GITHUB_REPO" repo_temp
cp "$0" repo_temp/
cd repo_temp
git add .
git commit -m "Adicionando script de provisionamento"
git push origin main

# Limpeza
echo "Limpando arquivos temporários..."
rm -rf /tmp/linux-site-dio-main /tmp/main.zip repo_temp

echo "Provisionamento concluído!"

