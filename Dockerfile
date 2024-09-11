# Usa una imagen base de Node.js
FROM node:14

# Configura el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos necesarios al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la API
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
