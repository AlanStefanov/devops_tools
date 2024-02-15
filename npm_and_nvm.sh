#Alan Stefanov - DevOps Engineer
#!/bin/bash

# Instalar curl si no está instalado
if ! [ -x "$(command -v curl)" ]; then
  echo 'Error: curl no está instalado. Instalando curl...' >&2
  sudo apt-get update
  sudo apt-get install -y curl
fi

# Instalar NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Cargar NVM
source ~/.bashrc

# Instalar la última versión estable de Node.js
nvm install node

# Establecer la versión recién instalada de Node.js como predeterminada
nvm alias default node

# Imprimir la versión de Node.js y npm instalada
node -v
npm -v