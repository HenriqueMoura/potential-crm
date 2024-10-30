# Use uma imagem oficial Node.js
FROM node:lts

# Diretório de trabalho
WORKDIR /app

# Copie o arquivo package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código para dentro do container
COPY . .

# Exponha a porta que o AdonisJS usa (por padrão é 3333)
EXPOSE 3333

# Comando para rodar a aplicação
CMD ["npm", "run", "dev"]
