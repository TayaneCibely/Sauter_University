# Use uma imagem base do Nginx
FROM nginx:alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/share/nginx/html

# Copia os arquivos da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta que o Nginx usará
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
