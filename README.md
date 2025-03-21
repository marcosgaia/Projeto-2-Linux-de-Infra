# 🚀 Infraestrutura como Código (IaC) - Provisionamento de Servidor Web (Apache)

## 📌 Descrição
Este projeto utiliza **Infraestrutura como Código (IaC)** para automatizar o provisionamento de um servidor web Apache. O script realiza a instalação e configuração do servidor, garantindo a entrega rápida e eficiente da aplicação.

## 🛠 Tecnologias Utilizadas
- **Shell Script (Bash)** para automação
- **Apache2** como servidor web
- **Unzip** para extração de arquivos
- **Linux (Ubuntu Server via WSL no Windows 11)** como sistema operacional
- **GitHub** para versionamento do script

## 📜 Etapas do Provisionamento
1️⃣ Atualizar o servidor 🛠️  
2️⃣ Instalar o **Apache2** 🌐  
3️⃣ Instalar o **Unzip** 📦  
4️⃣ Baixar a aplicação do GitHub 🎯  
5️⃣ Copiar os arquivos da aplicação para o diretório do Apache 📂  
6️⃣ Subir o script para um repositório no GitHub 📤  

## 🚀 Como Executar o Script no Windows 11 (WSL Ubuntu Server)

### 1️⃣ Habilitar o WSL e Instalar o Ubuntu Server
```sh
wsl --install -d Ubuntu-22.04
```

### 2️⃣ Acessar o Ubuntu pelo WSL
```sh
wsl
```

### 3️⃣ Atualizar o Sistema e Instalar Dependências
```sh
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 unzip -y
```

### 4️⃣ Baixar e Copiar a Aplicação
```sh
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
sudo cp -R linux-site-dio-main/* /var/www/html/
```

### 5️⃣ Iniciar e Habilitar o Apache
```sh
sudo systemctl start apache2
sudo systemctl enable apache2
```

### 6️⃣ Clonar e Executar o Script no GitHub
```sh
git clone https://github.com/seu-usuario/nome-do-repositorio.git
cd nome-do-repositorio
chmod +x provisionamento.sh
./provisionamento.sh
```

## 📂 Estrutura do Projeto
```
├── provisionamento.sh  # Script principal
├── README.md           # Documentação do projeto
└── arquivos/           # Arquivos da aplicação (se necessário)
```

## 📖 Referências
- [Documentação do Apache](https://httpd.apache.org/docs/)
- [Infraestrutura como Código (IaC) - Conceitos](https://www.terraform.io/)
- [WSL - Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/)

## 📜 Licença
Este projeto está sob a licença MIT.

---
💡 **Contribuições são bem-vindas!** Caso tenha sugestões ou melhorias, abra um PR. 🚀

